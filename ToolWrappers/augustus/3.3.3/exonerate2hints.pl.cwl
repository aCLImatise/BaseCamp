class: CommandLineTool
id: exonerate2hints.pl.cwl
inputs:
- id: in_priority
  doc: priority of hint group (default 4)
  type: long?
  inputBinding:
    prefix: --priority
- id: in_min_intron_len
  doc: alignments with gaps shorter than this and longer than maxgaplen are discarded
    (default 41)
  type: long?
  inputBinding:
    prefix: --minintronlen
- id: in_max_intron_len
  doc: alignments with longer gaps are discarded (default 350000
  type: long?
  inputBinding:
    prefix: --maxintronlen
- id: in_cds_part_cut_off
  doc: this many bp are cut off of each CDSpart hint w.r.t. the exonerate cds (default
    9)
  type: long?
  inputBinding:
    prefix: --CDSpart_cutoff
- id: in_source
  doc: source identifier (default 'P')
  type: string?
  inputBinding:
    prefix: --source
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- exonerate2hints.pl
