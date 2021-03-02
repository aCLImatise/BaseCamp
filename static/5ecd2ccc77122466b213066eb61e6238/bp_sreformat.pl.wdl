version 1.0

task BpSreformatpl {
  input {
    Boolean? in_format
    Boolean? out_format
    Boolean? specify_input_file
    File? specify_output_file
    Boolean? msa
    Int? special
  }
  command <<<
    bp_sreformat_pl \
      ~{if (in_format) then "--informat" else ""} \
      ~{if (out_format) then "--outformat" else ""} \
      ~{if (specify_input_file) then "--input" else ""} \
      ~{if (specify_output_file) then "--output" else ""} \
      ~{if (msa) then "--msa" else ""} \
      ~{if defined(special) then ("--special " +  '"' + special + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_format: "Specify the input format"
    out_format: "Specify the output format"
    specify_input_file: "Specify the input file name\\n(to pass in data on STDIN use minus sign as filename)"
    specify_output_file: "Specify the output file name\\n(to pass data out on STDOUT use minus sign as filename)"
    msa: "Specify this is multiple sequence alignment data"
    special: "Specify special params supported by some formats\\nComma or space separated please.\\nThese include:\\nnointerleaved   -- for phylip,non-interleaved format\\nidlinebreak     -- for phylip, makes it molphy format\\npercentages     -- for clustalw, show % id per line\\nflat            -- don't show start-end in seqid\\nlinelength      -- line length for clustalw\\nmrbayes         -- for MrBayes proper NEXUS output\\n"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}