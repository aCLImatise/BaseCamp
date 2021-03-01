class: CommandLineTool
id: assembly.py_order_and_orient.cwl
inputs:
- id: in_out_alternate_contigs
  doc: "Output sequences (FASTA format) from alternative\ncontigs that mapped, but\
    \ were not chosen for the final\noutput."
  type: string?
  inputBinding:
    prefix: --outAlternateContigs
- id: in_break_len
  doc: "Amount to extend alignment clusters by (if --extend).\nnucmer default 200,\
    \ promer default 60."
  type: long?
  inputBinding:
    prefix: --breaklen
- id: in_max_gap
  doc: "Maximum gap between two adjacent matches in a cluster.\nOur default is 200.\
    \ nucmer default 90, promer default\n30. Manual suggests going to 1000."
  type: long?
  inputBinding:
    prefix: --maxgap
- id: in_min_match
  doc: "Minimum length of an maximal exact match. Our default\nis 10. nucmer default\
    \ 20, promer default 6."
  type: long?
  inputBinding:
    prefix: --minmatch
- id: in_min_cluster
  doc: "Minimum cluster length. nucmer default 65, promer\ndefault 20."
  type: long?
  inputBinding:
    prefix: --mincluster
- id: in_min_pct_id
  doc: "show-tiling: minimum percent identity for contig\nalignment (0.0 - 1.0, default:\
    \ 0.6)"
  type: long?
  inputBinding:
    prefix: --min_pct_id
- id: in_min_contig_len
  doc: "show-tiling: reject contigs smaller than this\n(default: 200)"
  type: long?
  inputBinding:
    prefix: --min_contig_len
- id: in_min_pct_contig_aligned
  doc: "show-tiling: minimum percent of contig length in\nalignment (0.0 - 1.0, default:\
    \ 0.3)"
  type: long?
  inputBinding:
    prefix: --min_pct_contig_aligned
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory?
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure.\n"
  type: boolean?
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_in_fasta
  doc: Input de novo assembly/contigs, FASTA format.
  type: string
  inputBinding:
    position: 0
- id: in_in_reference
  doc: "Reference genome for ordering, orienting, and merging\ncontigs, FASTA format."
  type: string
  inputBinding:
    position: 1
- id: in_out_fast_a
  doc: "Output assembly, FASTA format, with the same number of\nchromosomes as inReference,\
    \ and in the same order."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- assembly.py
- order_and_orient
