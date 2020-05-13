class: CommandLineTool
id: contig2contig_seqfile_contigfile.cwl
inputs:
- id: out_contig_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- contig2contig
- seqfile
- contigfile
