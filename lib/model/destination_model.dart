import 'dart:math';

Random random = Random();
const description =
    'Tempat-tempat wisata menawarkan beragam pengalaman, masing-masing dengan pesona dan daya tarik yang unik. Dari lanskap alam yang memukau hingga landmark bersejarah, selalu ada sesuatu untuk setiap wisatawan. Wisata PesisirDestinasi seperti pantai tropis mengundang relaksasi dengan air yang jernih, sementara daerah pegunungan menawarkan jalur pendakian yang penuh petualangan dan pemandangan yang menakjubkan.';

class TravelDestination {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location;
  final double rate;

  TravelDestination({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.location,
    required this.review,
    required this.price,
    required this.description,
    required this.rate,
  });
}

List<TravelDestination> listDestination = [
  // Popular destinations
  TravelDestination(
      id: 1,
      name: "Via Putri",
      category: 'popular',
      image: [
        "lib/assets/putri.jpg",
        "lib/assets/putri.jpg",
        "lib/assets/putri.jpg",
        "lib/assets/putri.jpg",
      ],
      location: 'Cianjur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 150,
      description: description,
      rate: 4.8),
  TravelDestination(
      id: 2,
      name: "via cibodas",
      category: 'popular',
      image: [
        "lib/assets/cibodas.jpg",
        "lib/assets/cibodas.jpg",
        "lib/assets/cibodas.jpg",
        "lib/assets/cibodas.jpg",
      ],
      location: 'Cianjur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 250,
      description: description,
      rate: 4.9),
  TravelDestination(
      id: 3,
      name: "via selabintana",
      category: 'popular',
      image: [
        "lib/assets/selabintara.jpg",
        "lib/assets/selabintara.jpg",
        "lib/assets/selabintara.jpg",
        "lib/assets/selabintara.jpg",
      ],
      location: 'Cianjur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 250,
      description: description,
      rate: 4.8),
  // TravelDestination(
  //     id: 4,
  //     name: "Tanah Lot",
  //     category: 'popular',
  //     image: [
  //       "https://images.unsplash.com/photo-1555865138-193ba536d7e0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //       "https://images.unsplash.com/photo-1698799619978-872b701b44a8?q=80&w=2128&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //       "https://images.unsplash.com/photo-1566811851038-0580f1fb9082?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //       "https://images.unsplash.com/photo-1664551577638-9a212d646b9b?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //     ],
  //     location: 'Bali, Indonesia',
  //     review: random.nextInt(250) + 20,
  //     price: 100,
  //     description: description,
  //     rate: 4.7),

  // Recommended destinations
  TravelDestination(
      id: 5,
      name: "Via Putri",
      category: 'rekomendasi',
      image: [
        "lib/assets/putri.jpg",
        "lib/assets/putri.jpg",
        "lib/assets/putri.jpg",
        "lib/assets/putri.jpg",
      ],
      location: 'Cianjur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 180,
      description: description,
      rate: 4.6),
  TravelDestination(
      id: 6,
      name: "Via Cibodas",
      category: 'rekomendasi',
      image: [
        "lib/assets/cibodas.jpg",
        "lib/assets/cibodas.jpg",
        "lib/assets/cibodas.jpg",
        "lib/assets/cibodas.jpg",
      ],
      location: 'Cianjur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 120,
      description: description,
      rate: 4.5),
  TravelDestination(
      id: 7,
      name: "Via Selabintana",
      category: 'rekomendasi',
      image: [
        "lib/assets/selabintara.jpg",
        "lib/assets/selabintara.jpg",
        "lib/assets/selabintara.jpg",
        "lib/assets/selabintara.jpg",
      ],
      location: 'Cianjur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 350,
      description: description,
      rate: 4.7),
  // TravelDestination(
  //     id: 8,
  //     name: "Nusa Penida",
  //     category: 'rekomendasi',
  //     image: [
  //       "https://images.unsplash.com/photo-1604430289272-0851a606105d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //       "https://images.unsplash.com/photo-1577717903315-1691ae25ab3f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //       "https://images.unsplash.com/photo-1711786120068-63c4306d8d0d?q=80&w=1916&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //       "https://images.unsplash.com/photo-1672128557444-da9340a253f0?q=80&w=1933&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //     ],
  //     location: 'Bali, Indonesia',
  //     review: random.nextInt(250) + 20,
  //     price: 200,
  //     description: description,
  //     rate: 4.7),
  // TravelDestination(
  //     id: 9,
  //     name: "Candi Borobudur",
  //     category: 'rekomendasi',
  //     image: [
  //       "https://images.unsplash.com/photo-1596402184320-417e7178b2cd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //       "https://images.unsplash.com/photo-1512631911403-3e3a06d12389?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //       "https://images.unsplash.com/photo-1620549146396-9024d914cd99?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //       "https://images.unsplash.com/photo-1631340729644-8b8aad1e9dba?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //     ],
  //     location: 'Jawa Tengah, Indonesia',
  //     review: random.nextInt(250) + 20,
  //     price: 150,
  //     description: description,
  //     rate: 4.8),
];
