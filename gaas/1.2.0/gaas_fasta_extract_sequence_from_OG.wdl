version 1.0

task GaasFastaExtractSequenceFromOG.pl {
  input {
    String? fast_a
    Boolean? og
    Boolean? dir
  }
  command <<<
    gaas_fasta_extract_sequence_from_OG.pl \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--og" false="" og} \
      ~{true="--dir" false="" dir}
  >>>
  parameter_meta {
    fast_a: "Input fasta file."
    og: "The OG file contains all the orthoMCL groups and the ID of the sequences in each group. eg : OG_1000: 5833|MAL13P1.2:pep 5833|PF10_0398:pep OG_1001: 5833|MAL13P1.1:pep 5833|PFE0005w:pep 5833|MAL8P1.220:pep 5833|PFF1595c:pep"
    dir: "optional you can choose a name for the output folder, by default it will be called OG_fasta"
  }
}