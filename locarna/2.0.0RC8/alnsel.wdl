version 1.0

task Alnsel.plNames {
  input {
    String? inputInputAln
    String? namesNames
  }
  command <<<
    alnsel.pl names \
      ~{inputInputAln} \
      ~{namesNames}
  >>>
}