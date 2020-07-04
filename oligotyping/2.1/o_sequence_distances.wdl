version 1.0

task OSequenceDistances {
  input {
    File? output_file
    Boolean? align
    String fast_a
  }
  command <<<
    o-sequence-distances \
      ~{fast_a} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{true="--align" false="" align}
  >>>
  parameter_meta {
    output_file: "Output file to store results"
    align: "If sequences require pairwise alignment"
    fast_a: "FASTA file that contains -representative?- sequences"
  }
}