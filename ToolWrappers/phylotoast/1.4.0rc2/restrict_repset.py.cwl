class: CommandLineTool
id: restrict_repset.py.cwl
inputs:
- id: in_biom_fp
  doc: "Path to a biom-format file with OTU-Sample abundance\ndata."
  type: File?
  inputBinding:
    prefix: --biom_fp
- id: in_rep_set_fp
  doc: "Path to a FASTA-format file containing the\nrepresentative set of OTUs"
  type: File?
  inputBinding:
    prefix: --repset_fp
- id: in_rep_set_out_fp
  doc: "Path to the new restricted repset file\n"
  type: File?
  inputBinding:
    prefix: --repset_out_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- restrict_repset.py
