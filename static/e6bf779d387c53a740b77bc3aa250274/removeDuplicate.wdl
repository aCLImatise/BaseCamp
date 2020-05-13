version 1.0

task RemoveDuplicate {
  input {
    Boolean gff3Gff3
    File? fileFile
    File? fileFile
  }
  command <<<
    removeDuplicate \
      ~{fileFile} \
      ~{true="-gff3" false="" gff3Gff3} \
      ~{fileFile}
  >>>
}