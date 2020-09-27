class: CommandLineTool
id: align_trim_orthologs.py.cwl
inputs:
- id: in_orthologs_zip
  doc: archive of orthologous genes in FASTA format
  type: File
  inputBinding:
    prefix: --orthologs-zip
- id: in_retained_threshold
  doc: filter orthologs that retain less than PERC % of sequence after trimming alignment
  type: string
  inputBinding:
    prefix: --retained-threshold
- id: in_max_in_del_length
  doc: filter orthologs that contain insertions / deletions longer than N in middle
    of alignment
  type: long
  inputBinding:
    prefix: --max-indel-length
- id: in_aligned_zip
  doc: destination file path for archive of aligned orthologous genes
  type: File
  inputBinding:
    prefix: --aligned-zip
- id: in_misaligned_zip
  doc: destination file path for archive of misaligned orthologous genes
  type: File
  inputBinding:
    prefix: --misaligned-zip
- id: in_trimmed_zip
  doc: destination file path for archive of aligned & trimmed orthologous genes
  type: File
  inputBinding:
    prefix: --trimmed-zip
- id: in_stats
  doc: destination file path for ortholog trimming statistics file
  type: File
  inputBinding:
    prefix: --stats
- id: in_scatterplot
  doc: destination file path for scatterplot of retained and filtered sequences by
    length
  type: File
  inputBinding:
    prefix: --scatterplot
- id: in_filter_orthologs_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- align_trim_orthologs.py
