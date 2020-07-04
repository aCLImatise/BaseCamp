version 1.0

task Ataqv {
  input {
    String fly
    String worm
    String yeast
  }
  command <<<
    ataqv \
      ~{fly} \
      ~{worm} \
      ~{yeast}
  >>>
  parameter_meta {
    fly: "2R 2L 3R 3L 4 "
    worm: "I II III IV V "
    yeast: "I II III IV V VI VII VIII IX X XI XII XIII XIV XV XVI "
  }
}