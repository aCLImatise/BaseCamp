class: CommandLineTool
id: phyluce_align_get_only_loci_with_min_taxa.cwl
inputs:
- id: in_output
  doc: "[--percent PERCENT]\n[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]\n\
    [--verbosity {INFO,WARN,CRITICAL}]\n[--log-path LOG_PATH]\n[--cores CORES]"
  type: File
  inputBinding:
    prefix: --output
- id: in_alignments
  doc: "The directory containing alignments to screen.\n(default: None)"
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_percent
  doc: 'The percent of taxa to require (default: 0.75)'
  type: double
  inputBinding:
    prefix: --percent
- id: in_input_format
  doc: 'The input alignment format. (default: nexus)'
  type: string
  inputBinding:
    prefix: --input-format
- id: in_verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: File
  inputBinding:
    prefix: --log-path
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n(default: 1)\n"
  type: long
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_only_loci_with_min_taxa
