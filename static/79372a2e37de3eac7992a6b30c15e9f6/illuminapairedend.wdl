version 1.0

task Illuminapairedend {
  input {
    Boolean? fast_a_output
    Boolean? fast_q_output
    String? eco_pcr_db_output
    Boolean? uppercase
  }
  command <<<
    illuminapairedend \
      ~{true="--fasta-output" false="" fast_a_output} \
      ~{true="--fastq-output" false="" fast_q_output} \
      ~{if defined(eco_pcr_db_output) then ("--ecopcrdb-output " +  '"' + eco_pcr_db_output + '"') else ""} \
      ~{true="--uppercase" false="" uppercase}
  >>>
  parameter_meta {
    fast_a_output: "Output sequences in obitools fasta format"
    fast_q_output: "Output sequences in sanger fastq format"
    eco_pcr_db_output: "Output sequences in ecopcr database format (sequence records are not printed on standard output)"
    uppercase: "Print sequences in upper case (default is lower case)"
  }
}