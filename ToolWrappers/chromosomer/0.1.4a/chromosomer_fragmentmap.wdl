version 1.0

task ChromosomerFragmentmap {
  input {
    Float? ratio_threshold
    Boolean? shrink_gaps
    String construct_fragment_map
    String alignment_file
    String gap_size
    String fragment_lengths
    String output_fragment_map
  }
  command <<<
    chromosomer fragmentmap \
      ~{construct_fragment_map} \
      ~{alignment_file} \
      ~{gap_size} \
      ~{fragment_lengths} \
      ~{output_fragment_map} \
      ~{if defined(ratio_threshold) then ("--ratio_threshold " +  '"' + ratio_threshold + '"') else ""} \
      ~{if (shrink_gaps) then "--shrink_gaps" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ratio_threshold: "the least ratio of two greatest fragment alignment\\nscores to determine the fragment placed to a reference\\ngenome (default: 1.2)"
    shrink_gaps: "shrink large interfragment gaps to the specified size\\n(default: False)\\n"
    construct_fragment_map: "Construct a fragment map from fragment alignments to reference chromosomes."
    alignment_file: "a BLAST tabular file of fragment alignments to\\nreference chromosomes"
    gap_size: "a size of a gap inserted between mapped fragments"
    fragment_lengths: "a file containing lengths of fragment sequences; it\\ncan be obtained using the 'chromosomer fastalength'\\ntool"
    output_fragment_map: "an output fragment map file name"
  }
  output {
    File out_stdout = stdout()
  }
}