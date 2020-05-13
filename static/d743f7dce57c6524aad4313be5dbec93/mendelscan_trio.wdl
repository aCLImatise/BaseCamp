version 1.0

task MendelscanTrio {
  input {
    Boolean vepVepFile
    Boolean pedPedFile
    Boolean geneGeneFile
    Boolean outputOutputFile
    Boolean outputOutputRecessive
    String outputOutputDeNovo
  }
  command <<<
    mendelscan trio \
      ~{true="--vep-file" false="" vepVepFile} \
      ~{true="--ped-file" false="" pedPedFile} \
      ~{true="--gene-file" false="" geneGeneFile} \
      ~{true="--output-file" false="" outputOutputFile} \
      ~{true="--output-recessive" false="" outputOutputRecessive} \
      ~{if defined(outputOutputDeNovo) then ("--output-denovo " +  '"' + outputOutputDeNovo + '"') else ""}
  >>>
}