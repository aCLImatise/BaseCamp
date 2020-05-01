version 1.0

task SquareMash {
  input {
    Boolean classicClassic
  }
  command <<<
    square_mash \
      ~{true="--classic" false="" classicClassic}
  >>>
}