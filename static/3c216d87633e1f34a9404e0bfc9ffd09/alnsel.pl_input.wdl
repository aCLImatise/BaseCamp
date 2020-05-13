version 1.0

task Alnsel.plInput.aln {
  input {
    String? namesNames
  }
  command <<<
    alnsel.pl input.aln \
      ~{namesNames}
  >>>
}