version 1.0

task DrDiscoIntegrate {
  input {
    String gtfGtf
    String fastFastA
    String? optionsOptions
    String? tableTableInputFile
    String? tableTableOutputFile
  }
  command <<<
    dr-disco integrate \
      ~{optionsOptions} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{tableTableInputFile} \
      ~{tableTableOutputFile}
  >>>
}