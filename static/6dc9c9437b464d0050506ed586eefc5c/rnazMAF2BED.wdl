version 1.0

task RnazMAF2BED.pl {
  input {
    Boolean? seq_id
    Boolean? cluster
    Boolean? man
    File? file
  }
  command <<<
    rnazMAF2BED.pl \
      ~{file} \
      ~{true="--seq-id" false="" seq_id} \
      ~{true="--cluster" false="" cluster} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    seq_id: "Specify the sequence identifier of the sequence which should be used as a reference to create the output. Use for example \"hg17\" if you want to get all sequences containing \"hg17\" in the idenitfier (e.g. \"hg17.chr10\", \"hg17.chr22\",...). If this option is omitted, the first sequence identifier of the first sequence in the first alignment block is used."
    cluster: "Combine overlapping alignments and report non-overlapping regions in the BED output."
    man: "Prints a detailed manual page and exits."
    file: ""
  }
}