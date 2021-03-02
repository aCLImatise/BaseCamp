class: CommandLineTool
id: clipcontext_g2t.cwl
inputs:
- id: in_thr
  doc: "Site score threshold for filtering --in BED file\n(default: None)"
  type: double?
  inputBinding:
    prefix: --thr
- id: in_rev_filter
  doc: "Reverse filtering (keep values <= threshold and prefer\nsites with smaller\
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
- id: in_min_exon_ol
  doc: "Minimum exon overlap of a site to be reported as\ntranscript hit (intersectBed\
    \ -f parameter) (default:\n0.9)"
  type: double?
  inputBinding:
    prefix: --min-exon-ol
- id: in_merge_mode
  doc: "Defines how to merge overlapping transcript sites\n(overlap controlled by\
    \ --merge-ext). (1) only merge\nsites overlapping at exon borders, (2) merge all\n\
    overlapping sites, (3) do NOT merge overlapping sites\n(default: 1)"
  type: string?
  inputBinding:
    prefix: --merge-mode
- id: in_merge_ext
  doc: "Extend regions mapped to transcripts by --merge-ext\nbefore running mergeBed\
    \ to merge overlapping regions\n(default: 10)"
  type: long?
  inputBinding:
    prefix: --merge-ext
- id: in_add_out
  doc: "Output centered and extended sites and sequences for\nall transcript matches\
    \ (unique + non-unique) (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --add-out
- id: in_seq_ext
  doc: "Up- and downstream extension of centered sites for\ncontext sequence extraction\
    \ (default: 30)"
  type: long?
  inputBinding:
    prefix: --seq-ext
- id: in_all_gen_out
  doc: "Output all centered and extended genomic regions,\ninstead of only the ones\
    \ with unique transcript\nmatches (default: False)"
  type: boolean?
  inputBinding:
    prefix: --all-gen-out
- id: in_gen_uniq_ids
  doc: "Generate unique column 4 IDs for --in BED file entries\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --gen-uniq-ids
- id: in_report
  doc: "Output an .html report with statistics and plots\ncomparing transcript and\
    \ genomic sequences (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --report
- id: in_in
  doc: Genomic regions (hg38) BED file (6-column format)
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: Output results folder
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_tr
  doc: "Transcript sequence IDs list file to define\ntranscripts to map on"
  type: File?
  inputBinding:
    prefix: --tr
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
- g2t
