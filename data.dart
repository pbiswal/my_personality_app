enum QuestionType {
  Extraversion,
  Introversion,
  Sensing,
  Intuition,
  Thinking,
  Feeling,
  Judging,
  Perceiving
}

class Question {
  final String text;
  final QuestionType type;

  Question(this.text, this.type);
}

class PersonalityTester {
  final List<Question> questions = [];

  PersonalityTester() {
    // https://www.16personalities.com/free-personality-test
    // https://en.wikipedia.org/wiki/Myers%E2%80%93Briggs_Type_Indicator#/media/File:MyersBriggsTypes.png

    this.add_question(
        "You regularly make new friends.", QuestionType.Extraversion);
    this.add_question(
        "You spend a lot of your free time exploring various random topics that pique your interest.",
        QuestionType.Extraversion);
    this.add_question(
        "Seeing other people cry can easily make you feel like you want to cry too.",
        QuestionType.Extraversion);
    this.add_question("You often make a backup plan for a backup plan.",
        QuestionType.Extraversion);
    this.add_question("You usually stay calm, even under a lot of pressure.",
        QuestionType.Extraversion);
    this.add_question(
        "At social events, you rarely try to introduce yourself to new people and mostly talk to the ones you already know.",
        QuestionType.Extraversion);
  }

  void add_question(String text, QuestionType type) {
    this.questions.add(Question(text, type));
  }
}
