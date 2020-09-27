version 1.0

task BpSreformatpl {
  input {
    Boolean? h_slash_help
    Boolean? if_slash_in_format
    Boolean? of_slash_out_format
    Boolean? i_slash_input
    File? oslash_output
    Boolean? msa
    Int? special
  }
  command <<<
    bp_sreformat_pl \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if (if_slash_in_format) then "-if/--informat" else ""} \
      ~{if (of_slash_out_format) then "-of/--outformat" else ""} \
      ~{if (i_slash_input) then "-i/--input" else ""} \
      ~{if (oslash_output) then "-o/--output" else ""} \
      ~{if (msa) then "--msa" else ""} \
      ~{if defined(special) then ("--special " +  '"' + special + '"') else ""}
  >>>
  parameter_meta {
    h_slash_help: "Print this help"
    if_slash_in_format: "Specify the input format"
    of_slash_out_format: "Specify the output format"
    i_slash_input: "Specify the input file name\\n(to pass in data on STDIN use minus sign as filename)"
    oslash_output: "Specify the output file name\\n(to pass data out on STDOUT use minus sign as filename)"
    msa: "Specify this is multiple sequence alignment data"
    special: "Specify special params supported by some formats\\nComma or space separated please.\\nThese include:\\nnointerleaved   -- for phylip,non-interleaved format\\nidlinebreak     -- for phylip, makes it molphy format\\npercentages     -- for clustalw, show % id per line\\nflat            -- don't show start-end in seqid\\nlinelength      -- line length for clustalw\\nmrbayes         -- for MrBayes proper NEXUS output\\n"
  }
  output {
    File out_stdout = stdout()
    File out_oslash_output = "${in_oslash_output}"
  }
}