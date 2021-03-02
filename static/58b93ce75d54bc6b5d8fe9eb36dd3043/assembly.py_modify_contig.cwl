class: CommandLineTool
id: assembly.py_modify_contig.cwl
inputs:
- id: in_name
  doc: 'fasta header output name (default: existing header)'
  type: string?
  inputBinding:
    prefix: --name
- id: in_call_reference_ns
  doc: "should the reference sequence be called if there is an\nN in the contig and\
    \ a more specific base in the\nreference (default: False)"
  type: boolean?
  inputBinding:
    prefix: --call-reference-ns
- id: in_trim_ends
  doc: "should ends of contig.fasta be trimmed to length of\nreference (default: False)"
  type: boolean?
  inputBinding:
    prefix: --trim-ends
- id: in_replace_five_ends
  doc: "should the 5'-end of contig.fasta be replaced by\nreference (default: False)"
  type: boolean?
  inputBinding:
    prefix: --replace-5ends
- id: in_replace_three_ends
  doc: "should the 3'-end of contig.fasta be replaced by\nreference (default: False)"
  type: boolean?
  inputBinding:
    prefix: --replace-3ends
- id: in_replace_length
  doc: "length of ends to be replaced (if replace-ends is yes)\n(default: 10)"
  type: long?
  inputBinding:
    prefix: --replace-length
- id: in_format
  doc: 'Format for input alignment (default: fasta)'
  type: string?
  inputBinding:
    prefix: --format
- id: in_replace_end_gaps
  doc: "Replace gaps at the beginning and end of the sequence\nwith reference sequence\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --replace-end-gaps
- id: in_remove_end_ns
  doc: "Remove leading and trailing N's in the contig\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --remove-end-ns
- id: in_call_reference_ambiguous
  doc: "should the reference sequence be called if the contig\nseq is ambiguous and\
    \ the reference sequence is more\ninformative & consistant with the ambiguous\
    \ base (ie\nY->C) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --call-reference-ambiguous
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory?
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure."
  type: boolean?
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_r_seal_fondo_t
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: "input alignment of reference and contig (should\ncontain exactly 2 sequences)"
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: Destination file for modified contigs
  type: string
  inputBinding:
    position: 2
- id: in_ref
  doc: reference sequence name (exact match required)
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- assembly.py
- modify_contig
