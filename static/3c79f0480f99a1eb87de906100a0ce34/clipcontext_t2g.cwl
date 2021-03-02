class: CommandLineTool
id: clipcontext_t2g.cwl
inputs:
- id: in_thr
  doc: "Site score threshold for filtering --in BED file (default:\nNone)"
  type: double?
  inputBinding:
    prefix: --thr
- id: in_rev_filter
  doc: "Reverse filtering (keep values <= threshold and prefer sites\nwith smaller\
    \ values) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --rev-filter
- id: in_min_len
  doc: "Minimum input site length for filtering --in BED file\n(default: False)"
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_max_len
  doc: "Maximum input site length for filtering --in BED file\n(default: False)"
  type: long?
  inputBinding:
    prefix: --max-len
- id: in_seq_ext
  doc: "Up- and downstream extension of centered sites for context\nsequence extraction\
    \ (default: 30)"
  type: long?
  inputBinding:
    prefix: --seq-ext
- id: in_gen_uniq_ids
  doc: "Generate unique column 4 IDs for --in BED file entries\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --gen-uniq-ids
- id: in_report
  doc: "Output an .html report with statistics and plots comparing\ntranscript and\
    \ genomic sequences (default: False)"
  type: boolean?
  inputBinding:
    prefix: --report
- id: in_in
  doc: "Transcript regions BED file (6-column format) (transcript\nIDs need to be\
    \ in --gtf)"
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: Output results folder
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_gtf
  doc: Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_gen
  doc: Genomic sequences (hg38) .2bit file
  type: File?
  inputBinding:
    prefix: --gen
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output results folder
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- clipcontext
- t2g
