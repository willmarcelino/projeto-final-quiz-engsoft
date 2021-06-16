class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Quanto tempo a luz do Sol demora para chegar à Terra?",
    "options": ['12 minutos', '1 dia', '12 horas', '8 minutos'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "Qual a nacionalidade de Che Guevara?",
    "options": ['Argentina', 'Cubana', 'Peruana', ' Boliviana'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "Em que período da pré-história o fogo foi descoberto?",
    "options": ['Neolítico', 'Paleolítico', 'Idade dos Metais', 'Idade Média'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Em qual local da Ásia o português é língua oficial?",
    "options": ['Índia', 'Portugal', 'Moçambique', 'Macau'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question":
        "'It is six twenty' ou 'twenty past six'. Que horas são em inglês?",
    "options": ['12:06', '6:20', '2:20', '12:20'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question":
        "Como é a conjugação do verbo caber na 1.ª pessoa do singular do presente do indicativo?",
    "options": ['Eu caibo', 'Ele cabe', 'Que eu caiba', 'Eu cabo'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question":
        "Qual foi o recurso utilizado inicialmente pelo homem para explicar a origem das coisas?",
    "options": ['A Filosofia', 'A Matemática', ' A Biologia', 'A Mitologia'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "Qual o maior animal terrestre?",
    "options": ['Dinossauro', 'Elefante africano', 'Tubarão Branco', 'Girafa'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question":
        "As pessoas de qual tipo sanguíneo são consideradas doadores universais?",
    "options": ['Tipo A', 'Tipo B', 'Tipo O', 'Tipo AB'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "Qual o metal cujo símbolo químico é o Au?",
    "options": ['Cobre', 'Prata', 'Mercúrio', 'Ouro'],
    "answer_index": 3,
  },
];
