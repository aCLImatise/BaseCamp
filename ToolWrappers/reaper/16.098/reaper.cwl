class: CommandLineTool
id: reaper.cwl
inputs:
- id: in_geom
  doc: mode in {no-bc, 3p-bc, 5p-bc}
  type: long?
  inputBinding:
    prefix: -geom
- id: in_meta
  doc: "file with geometry-dependent format. Required columns:\nGeometry    Columns:\n\
    no-bc          3p-ad     -       -      -    tabu\n3p-bc          3p-ad  barcode\
    \  3p-si    -    tabu\n5p-bc          3p-ad  barcode    -    5p-si  tabu"
  type: File?
  inputBinding:
    prefix: -meta
- id: in_input_stream_gzipped
  doc: input stream (gzipped file allowed) (default STDIN)
  type: File?
  inputBinding:
    prefix: -i
- id: in_clean_length
  doc: minimum allowed clean length (default 0)
  type: long?
  inputBinding:
    prefix: -clean-length
- id: in_guard
  doc: protect first <int> bases in read from adapter and tabu matching
  type: long?
  inputBinding:
    prefix: -guard
- id: in_restrict
  doc: "only use the first <int> bases of adapter or tabu sequence (default 18)\n\
    This is to avoid false positive matches"
  type: long?
  inputBinding:
    prefix: -restrict
- id: in_tri
  doc: "filter out reads with tri-nt score > threshold\na reasonable <threshold> is\
    \ 35"
  type: long?
  inputBinding:
    prefix: -tri
- id: in_dust_suffix
  doc: dust theshold for read suffix (default 0, suggested 20)
  type: long?
  inputBinding:
    prefix: -dust-suffix
- id: in_nnn_check
  doc: "/<outof> (default 0/0)\ndisregard read onwards from seeing <count> N's in\
    \ <outof> bases"
  type: long?
  inputBinding:
    prefix: -nnn-check
- id: in_three_p_global
  doc: l/e[/g[/o]]  (default 14/2/1/0)
  type: boolean?
  inputBinding:
    prefix: -3p-global
- id: in_three_p_prefix
  doc: l/e[/g[/o]]  (default 8/2/0/2)
  type: boolean?
  inputBinding:
    prefix: -3p-prefix
- id: in_three_p_barcode
  doc: /e[/g[/o]]  (default 0/6/1/0)
  type: long?
  inputBinding:
    prefix: -3p-barcode
- id: in_five_p_barcode
  doc: /e[/g[/o]]  (default 0/0/0/2)
  type: long?
  inputBinding:
    prefix: -5p-barcode
- id: in_mr_tabu
  doc: l/e[/g[/o]]  (default 16/2/1/0)
  type: boolean?
  inputBinding:
    prefix: -mr-tabu
- id: in_three_p_head_to_tail
  doc: "minimal trailing perfect match length (default 0)\nsyntax used in the above:\n\
    l  <int> minimum length required to count sub-alignment as match\ne  <int> maximum\
    \ allowed edit distance\ng  <int> [optional, not active when set to 0] maximum\
    \ allowed number of gaps\no  <int> [optional, not active when set to 0] offset:\n\
    o= 5  requires alignment to start in the first five bases of adaptor\no=-5  requires\
    \ alignment to end in the last five bases of adaptor"
  type: long?
  inputBinding:
    prefix: -3p-head-to-tail
- id: in_swp
  doc: /S/G match/substitution/gap gain/cost/cost (default 4/1/3)
  type: long?
  inputBinding:
    prefix: -swp
- id: in_fast_a_in
  doc: read FASTA input
  type: boolean?
  inputBinding:
    prefix: --fasta-in
- id: in_record_format
  doc: "(record description, default @%I%A%n%R%n+%#%Q%n)\n[ -record-format syntax\
    \ is output when supplying --record-format ]"
  type: string?
  inputBinding:
    prefix: -record-format
- id: in_record_format_two
  doc: "(simple line formats, one field per line):\nR  read\nI  read identifier\n\
    Q  quality scores\nD  discard field"
  type: long?
  inputBinding:
    prefix: -record-format2
- id: in_basename
  doc: pfx.lint.gz, pfx.clean.gz pfx.report etc will be constructed
  type: string?
  inputBinding:
    prefix: -basename
- id: in_format_clean
  doc: (output for clean reads)
  type: string?
  inputBinding:
    prefix: -format-clean
- id: in_format_lint
  doc: "(output for filtered reads)\n-format-clean/lint specification syntax:\n%R\
    \  read\n%C  clean read\n%Z  clean read padded with Ns if necessary\n%V  reverse\
    \ complement of clean read\n%I  read identifier\n%Q  clean or input read quality\
    \ (for clean / lint file respectively)\n%X  read count (only applicable if -record-format\
    \ is used)\n%Y  input read quality\n%q<c>  clean input read quality padded with\
    \ character <c>\n%A  annotation field\n%L  clean read length\n%M  message describing\
    \ cause for filtering (lint file)\n%T  trinucleotide complexity score (clean/lint\
    \ file)\n%U  dUst sUffix complexity information\n%3  best read/3p-adaptor alignment\n\
    %=  alignment characteristics\nmt=matchtype\nsc=suffix-complexity\nht=head-tail-match\n\
    nn=N-match-offset\nbb=B-match-offset\naa=Polya-offset\nqq=Quality-trim-offset\n\
    %n  newline\n%J  record offset, unique for each read. Use to match paired-end\
    \ reads\n%f  fastq line number based on standard fastq format\n%t  tab\n%%  percent\
    \ sign\nAnything else is copied verbatim"
  type: long?
  inputBinding:
    prefix: -format-lint
- id: in_debug
  doc: '[acl]+     a=alignments c=clean l=lint'
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_sample
  doc: /l       if debug, sample every c/l clean/lint read
  type: string?
  inputBinding:
    prefix: -sample
- id: in_no_zip
  doc: do not output gzipped files
  type: boolean?
  inputBinding:
    prefix: --nozip
- id: in_no_qc
  doc: do not output quality report files
  type: boolean?
  inputBinding:
    prefix: --noqc
- id: in_bcq_early
  doc: perform early 'B' quality filtering (when reading sequences)
  type: boolean?
  inputBinding:
    prefix: --bcq-early
- id: in_bcq_late
  doc: perform late 'B' quality filtering (before outputting sequences)
  type: boolean?
  inputBinding:
    prefix: --bcq-late
- id: in_full_length
  doc: only allow reads not shortened in any filter step
  type: boolean?
  inputBinding:
    prefix: --full-length
- id: in_keep_all
  doc: delete rather than discard reads (e.g. tabu match, missing 5p-sinsert)
  type: boolean?
  inputBinding:
    prefix: --keep-all
- id: in_trim_length
  doc: cut reads back to length <int>
  type: long?
  inputBinding:
    prefix: -trim-length
- id: in_polya
  doc: remove trailing A's if length exceeds <int>
  type: long?
  inputBinding:
    prefix: -polya
- id: in_sc_max
  doc: threshold for complexity of suffix following prefix match (default 0.25)
  type: long?
  inputBinding:
    prefix: -sc-max
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- reaper
