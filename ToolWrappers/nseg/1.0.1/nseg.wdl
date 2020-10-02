version 1.0

task Nseg {
  input {
    Boolean? input_sequence_represented
    Int? number_sequence_charactersline
    File file
    String window
    String lo_cut
    String hi_cut
    String options
  }
  command <<<
    nseg \
      ~{file} \
      ~{window} \
      ~{lo_cut} \
      ~{hi_cut} \
      ~{options} \
      ~{if (input_sequence_represented) then "-x" else ""} \
      ~{if defined(number_sequence_charactersline) then ("-c " +  '"' + number_sequence_charactersline + '"') else ""}
  >>>
  parameter_meta {
    input_sequence_represented: "each input sequence is represented by a single output\\nsequence with low-complexity regions replaced by\\nstrings of 'x' characters"
    number_sequence_charactersline: "number of sequence characters/line (default 60)\\n-m <size> minimum length for a high-complexity segment\\n(default 0).  Shorter segments are merged with adjacent\\nlow-complexity segments\\n-l  show only low-complexity segments (fasta format)\\n-h  show only high-complexity segments (fasta format)\\n-a  show all segments (fasta format)\\n-n  do not add complexity information to the header line\\n-o  show overlapping low-complexity segments (default merge)\\n-t <maxtrim> maximum trimming of raw segment (default 100)\\n-p  prettyprint each segmented sequence (tree format)\\n-q  prettyprint each segmented sequence (block format)\\n-z <period>\\n"
    file: ""
    window: ""
    lo_cut: ""
    hi_cut: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}