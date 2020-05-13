version 1.0

task GenomeOntology {
  input {
    Boolean dD
    File fileFile
    Boolean gGSize
  }
  command <<<
    genomeOntology \
      ~{true="-d" false="" dD} \
      ~{if defined(fileFile) then ("-file " +  '"' + fileFile + '"') else ""} \
      ~{true="-gsize" false="" gGSize}
  >>>
}