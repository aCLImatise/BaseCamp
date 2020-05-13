version 1.0

task Alphtype {
  input {
    String? alphabetAlphabet
  }
  command <<<
    alphtype \
      ~{alphabetAlphabet}
  >>>
}