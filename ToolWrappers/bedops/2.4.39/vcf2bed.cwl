class: CommandLineTool
id: vcf2bed.cwl
inputs:
- id: in_keep_header
  doc: ', which munges these data into pseudo-elements'
  type: string
  inputBinding:
    prefix: --keep-header
- id: in_do_not_split
  doc: "(-p)\nBy default, this application prints multiple BED elements for each alternate\n\
    allele. Use this flag to print one BED element for all alternate alleles"
  type: boolean
  inputBinding:
    prefix: --do-not-split
- id: in_sn_vs
  doc: "(-v)\nReport only single nucleotide variants"
  type: boolean
  inputBinding:
    prefix: --snvs
- id: in_insertions
  doc: "(-t)\nReport only insertion variants"
  type: boolean
  inputBinding:
    prefix: --insertions
- id: in_deletions
  doc: "(-n)\nReport only deletion variants"
  type: boolean
  inputBinding:
    prefix: --deletions
- id: in_do_not_sort
  doc: "(-d)\nDo not sort BED output with sort-bed (not compatible with --output=starch)"
  type: boolean
  inputBinding:
    prefix: --do-not-sort
- id: in_max_mem
  doc: "(-m <val>)\nSets aside <value> memory for sorting BED output. For example,\
    \ <value> can\nbe 8G, 8000M or 8000000000 to specify 8 GB of memory (default is\
    \ 2G)"
  type: long
  inputBinding:
    prefix: --max-mem
- id: in_sort_tmpdir
  doc: "(-r <dir>)\nOptionally sets [dir] as temporary directory for sort data, when\
    \ used in\nconjunction with --max-mem=[value], instead of the host's operating\
    \ system\ndefault temporary directory"
  type: long
  inputBinding:
    prefix: --sort-tmpdir
- id: in_starch_bzip_two
  doc: "(-z)\nUsed with --output=starch, the compressed output explicitly applies\
    \ the bzip2\nalgorithm to compress intermediate data (default is bzip2)"
  type: boolean
  inputBinding:
    prefix: --starch-bzip2
- id: in_starch_gzip
  doc: "(-g)\nUsed with --output=starch, the compressed output applies gzip compression\
    \ on\nintermediate data"
  type: boolean
  inputBinding:
    prefix: --starch-gzip
- id: in_starch_note
  doc: "=\"xyz...\" (-e \"xyz...\")\nUsed with --output=starch, this adds a note to\
    \ the Starch archive metadata"
  type: boolean
  inputBinding:
    prefix: --starch-note
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcf2bed
