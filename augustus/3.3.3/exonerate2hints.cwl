class: CommandLineTool
id: exonerate2hints.pl.cwl
inputs:
- id: priority
  doc: priority of hint group (default 4)
  type: string
  inputBinding:
    prefix: --priority
- id: min_intron_len
  doc: alignments with gaps shorter than this and longer than maxgaplen are discarded
    (default 41)
  type: string
  inputBinding:
    prefix: --minintronlen
- id: max_intron_len
  doc: alignments with longer gaps are discarded (default 350000
  type: string
  inputBinding:
    prefix: --maxintronlen
- id: cds_part_cut_off
  doc: this many bp are cut off of each CDSpart hint w.r.t. the exonerate cds (default
    9)
  type: string
  inputBinding:
    prefix: --CDSpart_cutoff
- id: source
  doc: source identifier (default 'P')
  type: string
  inputBinding:
    prefix: --source
outputs: []
cwlVersion: v1.1
baseCommand:
- exonerate2hints.pl
