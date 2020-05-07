class: CommandLineTool
id: isONclust_write_fastq.cwl
inputs:
- id: clusters
  doc: the file "final_clusters.csv created by isONclust."
  type: string
  inputBinding:
    prefix: --clusters
- id: fast_q
  doc: Input fastq file
  type: string
  inputBinding:
    prefix: --fastq
- id: out_folder
  doc: Output folder
  type: string
  inputBinding:
    prefix: --outfolder
- id: n
  doc: Write out clusters with more or equal than N reads
  type: string
  inputBinding:
    prefix: --N
outputs: []
cwlVersion: v1.1
baseCommand:
- isONclust
- write_fastq
