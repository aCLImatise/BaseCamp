class: CommandLineTool
id: Barcode_split.cwl
inputs:
- id: in_summary_file
  doc: "[SUMMARY_FILE [SUMMARY_FILE ...]], -f [SUMMARY_FILE [SUMMARY_FILE ...]]\n\
    Path to a sequencing_summary generated by Albacore\n1.0.0 + (read_fast5_basecaller.py)\
    \ / Guppy 2.1.3+\n(guppy_basecaller). One can also pass multiple space\nseparated\
    \ file paths or a UNIX style regex matching\nmultiple files"
  type: boolean
  inputBinding:
    prefix: --summary_file
- id: in_barcode_file
  doc: "[BARCODE_FILE [BARCODE_FILE ...]], -b [BARCODE_FILE [BARCODE_FILE ...]]\n\
    Path to the barcode_file generated by Guppy 2.1.3+\n(guppy_barcoder) or Deepbinner\
    \ 0.2.0+. One can also\npass multiple space separated file paths or a UNIX\nstyle\
    \ regex matching multiple files"
  type: boolean
  inputBinding:
    prefix: --barcode_file
- id: in_output_dir
  doc: "Folder where to output split barcode data (default:\ncurrent dir"
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_output_unclassified
  doc: "If given, unclassified barcodes are also written in a\nfile. By default they\
    \ are skiped"
  type: boolean
  inputBinding:
    prefix: --output_unclassified
- id: in_min_barcode_percent
  doc: "Minimal percent of total reads to retain barcode\nlabel. If below, the barcode\
    \ value is set as\n`unclassified` (default: 0.1)"
  type: long
  inputBinding:
    prefix: --min_barcode_percent
- id: in_verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Reduce verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Folder where to output split barcode data (default:\ncurrent dir"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- Barcode_split
