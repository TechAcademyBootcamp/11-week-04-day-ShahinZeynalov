from django.db import models

# Create your models here.

class Book(models.Model):
    category_id = models.ManyToManyField('Category')
    title = models.CharField('Book Name',max_length=127)
    description = models.TextField('Description')
    author = models.ForeignKey('Author',on_delete = models.CASCADE)
    price = models.DecimalField('Price',max_digits=7,decimal_places=2,default =0.00,null=True,blank=True)
    page_count = models.IntegerField('Page Size',default=0,null=True,blank=True)
    cover_image = models.ImageField('Cover Image',upload_to = 'images/book_images/',null=True,blank=True)

    created_at = models.DateTimeField(auto_now_add=True,null=True,blank=True)
    updated_at = models.DateTimeField(auto_now=True,null=True,blank=True)


    def __str__(self):
        return f'{self.title} {self.author} {self.page_count}'

    class Meta:
        verbose_name = 'Book'
        verbose_name_plural = 'Books'
        ordering = ('title',)


GENDER=(
    (1,'Male'),
    (2,'Female'),
)
class Author(models.Model):
    fullname = models.CharField('Fullname',max_length = 63)
    image = models.ImageField('Author Image',upload_to = 'images/author_images',null=True,blank=True)
    gender = models.IntegerField('Gender',choices=GENDER)
    birthday = models.DateField('Birthday',auto_now=True,null=True,blank=True)
    nationality = models.CharField('Nation',max_length = 63,null=True,blank=True)
    info=models.TextField('Info',default = 'Author info ...')


    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f'{self.fullname} {self.birthday} {self.nationality}'

    class Meta:
        verbose_name = 'Author'
        verbose_name_plural = 'Authors'
        ordering = ('fullname',)


class Category(models.Model):
    title = models.CharField('Title',max_length = 127)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)


    def __str__(self):
        return f'{self.title}'

    class Meta:
        verbose_name = 'Category'
        verbose_name_plural = 'Categories'
        ordering = ('title',)



def create_category():
    id1=Author.objects.get(id=1)
    auth1 = Author.objects.create(fullname = 'Charles Dickens',gender=1)
    auth2 = Author.objects.create(fullname = 'Daniel Defoe',gender=1)
    auth2 = Author.objects.create(fullname = 'Daniel Defoe',gender=1)
    auth2 = Author.objects.create(fullname = 'Daniel Defoe',gender=1)
    auth3 = Author.objects.create(fullname = 'Dostoyevsky',gender=1)
    book1 = Book.objects.create(title='Harry Poter',description='Some Text',author=auth3,price=12.5,page_count=657)
    book1 = Book.objects.create(title='Great Expectations',description='Some Text',author=id1,price=18.01,page_count=456)
    book1 = Book.objects.create(title=' Poter',description='Some Text',author=auth2,price=10.50,page_count=475)
    book1 = Book.objects.create(title='Harry ',description='Some Text',author=auth2,price=25.99,page_count=999)
    book1 = Book.objects.create(title='Great Great',description='Some Text',author=auth2,price=5.30,page_count=234)
    book1 = Book.objects.create(title='Big think',description='Some Text',author=auth2,price=5.30,page_count=443)
    book1 = Book.objects.create(title='Great Ts in the fields',description='Some Text',author=auth1,price=5.30,page_count=1225)



def retrive_all():
    all_book=Book.objects.all()
    all_categories = Category.objects.all()
    all_authors = Authors.objects.all()


def retrive_books_less():
    for i in  Book.objects.filter(price__lt=15):
        print(i.price)

def retrive_20_century():
    print(Author.objects.filter(birthday__lt = '2000-01-01'))


def retrive_contains_a():
    print(Book.objects.filter(title__contains='a'))
    print(Category.objects.filter(title__contains='a'))

def author_match():
    print(Author.objects.filter(fullname='Daniel Defoe'))

def not_british():
    print(Author.objects.exclude(nationality ='British'))


def author_start():
    d= Author.objects.filter(fullname__startswith='D')
    all=[]
    for i in d:
        all.append(i.id)

    for i in all:
        print(Book.objects.filter(author=i))


def author_gender():
    d= Author.objects.filter(gender=1)
    for i in d:
        print(Book.objects.filter(id=i.id))

def category_ends():
    s = Book.objects.filter(category_id__title__endswith='e')
    print(s)


def book_primary():
    print(Book.objects.filter(id=3))






# --------------------------------------------------------------------------
# AdvancedQuerySet


def update_queryset():
    Book.objects.all().update(description='Updated description')


def gender_price_update():
    d= Author.objects.filter(gender=2)
    for i in d:
        print(Book.objects.filter(id=i.id).update(price=13.8))


def book_delete_greater():
    d = Book.objects.filter(page_count__gt=199)
    d.delete()


def retrive_contains_a():
    Author.objects.filter(fullname__contains='a').order_by('birthday')
    print(Category.objects.filter(title__contains='a'))

def retrive_contains_a():
    Author.objects.filter(fullname__contains='a').order_by('birthday')
    print(Category.objects.filter(title__contains='a'))


def book_dublicate():
    Book.objects.all().distinct('title')


def get_or_create_book():
    Book.objects.get_or_create(title='Big think',description='Some Text',author=auth2,price=5.30,page_count=443)
