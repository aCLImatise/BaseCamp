version 1.0

task Freak {
  input {
    Boolean lettersLetters
  }
  command <<<
    freak \
      ~{true="-letters" false="" lettersLetters}
  >>>
}