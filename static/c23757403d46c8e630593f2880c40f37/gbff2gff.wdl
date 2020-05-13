version 1.0

task Gbff2gff.sh {
  input {
    String? gbGbFfFile
    String? gffGffFile
  }
  command <<<
    gbff2gff.sh \
      ~{gbGbFfFile} \
      ~{gffGffFile}
  >>>
}