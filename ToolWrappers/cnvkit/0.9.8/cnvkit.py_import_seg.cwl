class: CommandLineTool
id: cnvkit.py_import_seg.cwl
inputs:
- id: in_chromosomes
  doc: "Mapping of chromosome indexes to names. Syntax:\n\"from1:to1,from2:to2\".\
    \ Or use \"human\" for the preset:\n\"23:X,24:Y,25:M\"."
  type: long?
  inputBinding:
    prefix: --chromosomes
- id: in_prefix
  doc: "Prefix to add to chromosome names (e.g 'chr' to rename\n'8' in the SEG file\
    \ to 'chr8' in the output)."
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_from_log_one_zero
  doc: "Convert base-10 logarithm values in the input to\nbase-2 logs."
  type: boolean?
  inputBinding:
    prefix: --from-log10
- id: in_output_dir
  doc: "Output directory name.\n"
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_samples_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: "Prefix to add to chromosome names (e.g 'chr' to rename\n'8' in the SEG file\
    \ to 'chr8' in the output)."
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_output_dir
  doc: "Output directory name.\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- import-seg
