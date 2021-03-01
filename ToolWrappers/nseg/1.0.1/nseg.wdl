version 1.0

task Nseg {
  input {
    Boolean? input_sequence_represented
    Int? number_sequence_charactersline
    Int? minimum_length_highcomplexity
    Boolean? show_only_segments_format
    Boolean? show_segments_fasta_format
    Boolean? add_complexity_information
    Boolean? show_segments_default
    Int? maximum_trimming_raw
    Boolean? prettyprint_segmented_tree_format
    Boolean? prettyprint_segmented_block_format
    File var_file
    String window
    String lo_cut
    String hi_cut
    String options
  }
  command <<<
    nseg \
      ~{var_file} \
      ~{window} \
      ~{lo_cut} \
      ~{hi_cut} \
      ~{options} \
      ~{if (input_sequence_represented) then "-x" else ""} \
      ~{if defined(number_sequence_charactersline) then ("-c " +  '"' + number_sequence_charactersline + '"') else ""} \
      ~{if defined(minimum_length_highcomplexity) then ("-m " +  '"' + minimum_length_highcomplexity + '"') else ""} \
      ~{if (show_only_segments_format) then "-l" else ""} \
      ~{if (show_segments_fasta_format) then "-a" else ""} \
      ~{if (add_complexity_information) then "-n" else ""} \
      ~{if (show_segments_default) then "-o" else ""} \
      ~{if defined(maximum_trimming_raw) then ("-t " +  '"' + maximum_trimming_raw + '"') else ""} \
      ~{if (prettyprint_segmented_tree_format) then "-p" else ""} \
      ~{if (prettyprint_segmented_block_format) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sequence_represented: "each input sequence is represented by a single output\\nsequence with low-complexity regions replaced by\\nstrings of 'x' characters"
    number_sequence_charactersline: "number of sequence characters/line (default 60)"
    minimum_length_highcomplexity: "minimum length for a high-complexity segment\\n(default 0).  Shorter segments are merged with adjacent\\nlow-complexity segments"
    show_only_segments_format: "show only low-complexity segments (fasta format)"
    show_segments_fasta_format: "show all segments (fasta format)"
    add_complexity_information: "do not add complexity information to the header line"
    show_segments_default: "show overlapping low-complexity segments (default merge)"
    maximum_trimming_raw: "maximum trimming of raw segment (default 100)"
    prettyprint_segmented_tree_format: "prettyprint each segmented sequence (tree format)"
    prettyprint_segmented_block_format: "prettyprint each segmented sequence (block format)"
    var_file: ""
    window: ""
    lo_cut: ""
    hi_cut: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}