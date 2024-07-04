class Book{
    final String title;
    final String author;
    final String description;
    final String imageURL;

    Book({
        required: this.title,
        required: this.author,
        required: this.description,
        required: this.imageURL,
    });
}
List<Book> books = [
   Book(
    title: "Tattletale",
    author: "Sarah J Naughton",
    description: "The perfect brother. The perfect fiancé. The perfect revenge?",
    imageURL: 'images/5.jpg',
  ),
  Book(
    title: "The Zoo",
    author: "Christopher Wilson",
    description: "A novel about a zoo and its inhabitants.",
    imageURL: 'images/6.jpg',
  ),
  Book(
    title: "2020 World of War",
    author: "Paul Cornish and Kingsley Donaldson",
    description: "A timely reminder that history never ends and is about to be made.",
    imageURL: 'images/7.jpg',
  ),
  Book(
    title: "Door to Door",
    author: "Edward Humes",
    description: "The magnificent, maddening, mysterious world of transportation.",
    imageURL: 'images/8.jpg',
  ),
],
