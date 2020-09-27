class: CommandLineTool
id: interleafq.cwl
inputs:
- id: in_output_prefix
  doc: "Basename for the output file when deinterleaving. Will produce by\ndefault\
    \ \"{prefix}_R1.fastq\" and \"{prefix}_R2.fastq\"."
  type: File
  inputBinding:
    prefix: --output-prefix
- id: in_first_pair
  doc: "Filename for the first pair produced when deinterleaving.\nAlternative to\
    \ \"-o\", if the specified output filename ends with\n'.gz' will print a compressed\
    \ file."
  type: File
  inputBinding:
    prefix: --first-pair
- id: in_second_pair
  doc: "Filename for the second pair produced when deinterleaving.\nAlternative to\
    \ \"-o\", if the specified output filename ends with\n'.gz' will print a compressed\
    \ file."
  type: File
  inputBinding:
    prefix: --second-pair
- id: in_strip_comments
  doc: "Will remove comments from the sequence headers (*i. e.* any string\nafter\
    \ the first space character in the read name line)."
  type: boolean
  inputBinding:
    prefix: --strip-comments
- id: in_relaxed
  doc: "Will not check for inconsistencies in read names and\nsequence/quality length.\
    \ The read names should be equal until the\nfirst '/'."
  type: boolean
  inputBinding:
    prefix: --relaxed
- id: in_force_interleave
  doc: "When supplying only the first pair-end file it will set interleave\nmode,\
    \ looking for a second pair-end file (replacing _R1 with _R2)"
  type: boolean
  inputBinding:
    prefix: --force-interleave
- id: in_verbose
  doc: "Display additional information (total printed sequences at the end,\nuseful\
    \ for truncated files)."
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prefix
  doc: "Basename for the output file when deinterleaving. Will produce by\ndefault\
    \ \"{prefix}_R1.fastq\" and \"{prefix}_R2.fastq\"."
  type: File
  outputBinding:
    glob: $(inputs.in_output_prefix)
- id: out_first_pair
  doc: "Filename for the first pair produced when deinterleaving.\nAlternative to\
    \ \"-o\", if the specified output filename ends with\n'.gz' will print a compressed\
    \ file."
  type: File
  outputBinding:
    glob: $(inputs.in_first_pair)
- id: out_second_pair
  doc: "Filename for the second pair produced when deinterleaving.\nAlternative to\
    \ \"-o\", if the specified output filename ends with\n'.gz' will print a compressed\
    \ file."
  type: File
  outputBinding:
    glob: $(inputs.in_second_pair)
cwlVersion: v1.1
baseCommand:
- interleafq
