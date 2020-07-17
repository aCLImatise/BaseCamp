version 1.0

task OGetReadsFromFasta {
  input {
    Boolean? compare_up_to_the_first_space
  }
  command <<<
    o-get-reads-from-fasta \
      ~{true="--compare-up-to-the-first-space" false="" compare_up_to_the_first_space}
  >>>
  parameter_meta {
    compare_up_to_the_first_space: "Compare IDs in the file only up to the first space in the IDs in the FASTA file"
  }
}