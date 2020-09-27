class: CommandLineTool
id: bp_sreformat.pl.cwl
inputs:
- id: in_h_slash_help
  doc: Print this help
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_if_slash_in_format
  doc: Specify the input format
  type: boolean
  inputBinding:
    prefix: -if/--informat
- id: in_of_slash_out_format
  doc: Specify the output format
  type: boolean
  inputBinding:
    prefix: -of/--outformat
- id: in_i_slash_input
  doc: "Specify the input file name\n(to pass in data on STDIN use minus sign as filename)"
  type: boolean
  inputBinding:
    prefix: -i/--input
- id: in_oslash_output
  doc: "Specify the output file name\n(to pass data out on STDOUT use minus sign as\
    \ filename)"
  type: File
  inputBinding:
    prefix: -o/--output
- id: in_msa
  doc: Specify this is multiple sequence alignment data
  type: boolean
  inputBinding:
    prefix: --msa
- id: in_special
  doc: "Specify special params supported by some formats\nComma or space separated\
    \ please.\nThese include:\nnointerleaved   -- for phylip,non-interleaved format\n\
    idlinebreak     -- for phylip, makes it molphy format\npercentages     -- for\
    \ clustalw, show % id per line\nflat            -- don't show start-end in seqid\n\
    linelength      -- line length for clustalw\nmrbayes         -- for MrBayes proper\
    \ NEXUS output\n"
  type: long
  inputBinding:
    prefix: --special
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oslash_output
  doc: "Specify the output file name\n(to pass data out on STDOUT use minus sign as\
    \ filename)"
  type: File
  outputBinding:
    glob: $(inputs.in_oslash_output)
cwlVersion: v1.1
baseCommand:
- bp_sreformat.pl
