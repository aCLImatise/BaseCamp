class: CommandLineTool
id: segtools_nucleotide_frequency.cwl
inputs:
- id: in_clobber
  doc: Overwrite any existing output files.
  type: boolean?
  inputBinding:
    prefix: --clobber
- id: in_quiet
  doc: Do not print diagnostic messages.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_quick
  doc: Compute values only for one chromosome.
  type: boolean?
  inputBinding:
    prefix: --quick
- id: in_replot
  doc: "Load data from output tab files and regenerate plots\ninstead of recomputing\
    \ data."
  type: boolean?
  inputBinding:
    prefix: --replot
- id: in_no_plot
  doc: Do not generate any plots.
  type: boolean?
  inputBinding:
    prefix: --noplot
- id: in_mnemonic_file
  doc: "If specified, labels will be shown using mnemonics\nfound in FILE"
  type: File?
  inputBinding:
    prefix: --mnemonic-file
- id: in_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: nucleotide_frequency]"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_val_pass_val
  doc: "=VAL        Pass VAL for PARAM when calling R functions. May be\nspecified\
    \ multiple times.\n"
  type: string?
  inputBinding:
    prefix: -R
- id: in_annotation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome_data_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: nucleotide_frequency]"
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- segtools-nucleotide-frequency
