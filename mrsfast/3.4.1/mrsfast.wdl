version 1.0

task Mrsfast {
  input {
    String? treatedTreated
    String? shouldShould
  }
  command <<<
    mrsfast \
      ~{treatedTreated} \
      ~{shouldShould}
  >>>
}