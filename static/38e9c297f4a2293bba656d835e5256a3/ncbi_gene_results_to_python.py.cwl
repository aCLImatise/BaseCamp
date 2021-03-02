class: CommandLineTool
id: ncbi_gene_results_to_python.py.cwl
inputs:
- id: in_outfile
  doc: "Write current citation report to an ASCII text file.\n"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_ncbi_gene_tsv
  doc: gene_result.tsv downloaded from NCBI Gene
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ncbi_gene_results_to_python.py
