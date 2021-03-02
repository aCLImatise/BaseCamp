class: CommandLineTool
id: burst_linux_DB12.cwl
inputs:
- id: in_references
  doc: '(-r) <name>: FASTA/edx DB of reference sequences [required]'
  type: boolean?
  inputBinding:
    prefix: --references
- id: in_accelerator
  doc: '(-a) <name>: Creates/uses a helper DB (acc/acx) [optional]'
  type: boolean?
  inputBinding:
    prefix: --accelerator
- id: in_queries
  doc: '(-q) <name>: FASTA file of queries to search [required if aligning]'
  type: boolean?
  inputBinding:
    prefix: --queries
- id: in_output
  doc: '(-o) <name>: Blast6/edb file for output alignments/database [required]'
  type: File?
  inputBinding:
    prefix: --output
- id: in_forward_reverse
  doc: '(-fr): also search the reverse complement of queries'
  type: boolean?
  inputBinding:
    prefix: --forwardreverse
- id: in_whitespace
  doc: '(-w): write full query names in output (include whitespace)'
  type: boolean?
  inputBinding:
    prefix: --whitespace
- id: in_x_alphabet
  doc: '(-x): Allow any alphabet and disable ambiguity matching'
  type: boolean?
  inputBinding:
    prefix: --xalphabet
- id: in_n_wildcard
  doc: '(-y): Allow N,X to match anything (in query and reference)'
  type: boolean?
  inputBinding:
    prefix: --nwildcard
- id: in_taxonomy
  doc: '(-b) <name>: taxonomy map (to interpolate, use -m CAPITALIST)'
  type: boolean?
  inputBinding:
    prefix: --taxonomy
- id: in_mode
  doc: "(-m) <name>: Pick an alignment reporting mode by name. Available modes:\n\
    BEST (report first best match by hybrid BLAST id)\nALLPATHS (report all ties with\
    \ same error profile)\nCAPITALIST (minimize set of references AND interpolate\
    \ taxonomy) [default]\nFORAGE (report all matches above specified threshold)\n\
    ANY (report any valid hit above specified threshold)"
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_make_db
  doc: "(-d) [name qLen]: Create a database from input references\n[name]: Optional.\
    \ Can be DNA, RNA, or QUICK [QUICK]\n[qLen]: Optional. Max query length to search\
    \ in DB [500]"
  type: boolean?
  inputBinding:
    prefix: --makedb
- id: in_db_partition
  doc: '(-dp) <int>: Split DB making into <int> chunks (lossy) [1]'
  type: boolean?
  inputBinding:
    prefix: --dbpartition
- id: in_tax_a_cut
  doc: '(-bc) <num>: allow 1/<int> rank discord OR % conf; 1/[10]'
  type: boolean?
  inputBinding:
    prefix: --taxacut
- id: in_tax_a_ncbi
  doc: "(-bn): Assume NCBI header format '>xxx|accsn...' for taxonomy"
  type: boolean?
  inputBinding:
    prefix: --taxa_ncbi
- id: in_skip_am_big
  doc: '(-sa): Do not consider highly ambiguous queries (5+ ambigs)'
  type: boolean?
  inputBinding:
    prefix: --skipambig
- id: in_tax_a_suppress
  doc: '(-bs) [STRICT]: Suppress taxonomic specificity by %ID'
  type: boolean?
  inputBinding:
    prefix: --taxasuppress
- id: in_id
  doc: '(-i) <decimal>: target minimum similarity (range 0-1) [0.97]'
  type: boolean?
  inputBinding:
    prefix: --id
- id: in_threads
  doc: '(-t) <int>: How many logical processors to use [8]'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_shear
  doc: '(-s) [len]: Shear references longer than [len] bases [500]'
  type: boolean?
  inputBinding:
    prefix: --shear
- id: in_fingerprint
  doc: '(-f): Use sketch fingerprints to precheck matches (or cluster db)'
  type: boolean?
  inputBinding:
    prefix: --fingerprint
- id: in_pre_pass
  doc: "(-p) [speed]: use ultra-heuristic pre-matching\n[speed]: Optional. Integer,\
    \ maximum search effort [16]"
  type: boolean?
  inputBinding:
    prefix: --prepass
- id: in_heuristic
  doc: '(-hr): allow relaxed comparison of low-id matches'
  type: boolean?
  inputBinding:
    prefix: --heuristic
- id: in_no_progress
  doc: ': suppress progress indicator'
  type: boolean?
  inputBinding:
    prefix: --noprogress
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: '(-o) <name>: Blast6/edb file for output alignments/database [required]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/burst:v1.0--0
cwlVersion: v1.1
baseCommand:
- burst_linux_DB12
