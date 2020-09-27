class: CommandLineTool
id: purge_haplotigs_clip.cwl
inputs:
- id: in_primary_primary_contigs
  doc: / -primary       Primary contigs (curated.fasta by default) from the 'purge'
    stage.
  type: boolean
  inputBinding:
    prefix: -p
- id: in_outprefix_output_file
  doc: / -outPrefix     Output file prefix. DEFAULT = clip
  type: File
  inputBinding:
    prefix: -o
- id: in_length_minimum_overlap
  doc: / -length        Minimum overlap length to trigger clipping. DEFAULT = 10000
  type: boolean
  inputBinding:
    prefix: -l
- id: in_gap_maximum_end
  doc: / -gap           Maximum end gap to allow clipping. DEFAULT = 10000
  type: boolean
  inputBinding:
    prefix: -g
- id: in_ratio_max_allowable
  doc: / -ratio         Max allowable gap to alignment ratio. DEFAULT = 0.5
  type: boolean
  inputBinding:
    prefix: -r
- id: in_threads_threds_use
  doc: / -threads       Threds to use. DEFAULT = 4
  type: boolean
  inputBinding:
    prefix: -t
- id: in_h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outprefix_output_file
  doc: / -outPrefix     Output file prefix. DEFAULT = clip
  type: File
  outputBinding:
    glob: $(inputs.in_outprefix_output_file)
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- clip
