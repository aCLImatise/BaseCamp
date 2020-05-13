version 1.0

task _freak {
  input {
    Boolean lettersLetters
  }
  command <<<
    _freak \
      ~{true="-letters" false="" lettersLetters}
  >>>
}