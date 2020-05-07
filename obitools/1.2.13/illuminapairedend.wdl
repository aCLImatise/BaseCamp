version 1.0

task Illuminapairedend {
  input {
    Boolean fastFastAOutput
    Boolean fastFastQOutput
    String ecoEcoPcrDbOutput
    Boolean uppercaseUppercase
  }
  command <<<
    illuminapairedend \
      ~{true="--fasta-output" false="" fastFastAOutput} \
      ~{true="--fastq-output" false="" fastFastQOutput} \
      ~{if defined(ecoEcoPcrDbOutput) then ("--ecopcrdb-output " +  '"' + ecoEcoPcrDbOutput + '"') else ""} \
      ~{true="--uppercase" false="" uppercaseUppercase}
  >>>
}