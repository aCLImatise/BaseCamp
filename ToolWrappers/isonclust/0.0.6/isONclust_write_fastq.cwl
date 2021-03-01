class: CommandLineTool
id: isONclust_write_fastq.cwl
inputs:
- id: in_clusters
  doc: the file "final_clusters.csv created by isONclust."
  type: File?
  inputBinding:
    prefix: --clusters
- id: in_fast_q
  doc: Input fastq file
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_out_folder
  doc: Output folder
  type: Directory?
  inputBinding:
    prefix: --outfolder
- id: in_write_clusters_reads
  doc: Write out clusters with more or equal than N reads
  type: string?
  inputBinding:
    prefix: --N
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_folder
  doc: Output folder
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_folder)
hints: []
cwlVersion: v1.1
baseCommand:
- isONclust
- write_fastq
