version 1.0

task ChromosomerFragmentmap {
  input {
    String? ratio_threshold
    Boolean? shrink_gaps
    String alignment_file
    String gap_size
    String fragment_lengths
    String output_map
  }
  command <<<
    chromosomer fragmentmap \
      ~{alignment_file} \
      ~{gap_size} \
      ~{fragment_lengths} \
      ~{output_map} \
      ~{if defined(ratio_threshold) then ("--ratio_threshold " +  '"' + ratio_threshold + '"') else ""} \
      ~{true="--shrink_gaps" false="" shrink_gaps}
  >>>
  parameter_meta {
    ratio_threshold: "the least ratio of two greatest fragment alignment scores to determine the fragment placed to a reference genome (default: 1.2)"
    shrink_gaps: "shrink large interfragment gaps to the specified size (default: False)"
    alignment_file: "a BLAST tabular file of fragment alignments to reference chromosomes"
    gap_size: "a size of a gap inserted between mapped fragments"
    fragment_lengths: "a file containing lengths of fragment sequences; it can be obtained using the 'chromosomer fastalength' tool"
    output_map: "an output fragment map file name"
  }
}