class: CommandLineTool
id: stats_alignment.py.cwl
inputs:
- id: in_query
  doc: "file containing the inserted sequences obtained from MindTheGap (format: 'xxx.insertions.fasta')"
  type: File?
  inputBinding:
    prefix: --query
- id: in_reference
  doc: "file containing the reference sequence of the gap (format: 'xxx.fasta')"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_ext
  doc: size of the gap, on both sides; determine start/end of gapfilling
  type: long?
  inputBinding:
    prefix: --ext
- id: in_prefix
  doc: prefix of output file to save the statistical results
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_outdir
  doc: "output directory for saving results\n"
  type: Directory?
  inputBinding:
    prefix: --outDir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: prefix of output file to save the statistical results
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_outdir
  doc: "output directory for saving results\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- stats_alignment.py
