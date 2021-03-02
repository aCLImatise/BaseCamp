class: CommandLineTool
id: fc_consensus.exe.cwl
inputs:
- id: in__mincov_coverage
  doc: =, --min_cov=         int     6       minimum coverage to break the
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_max_cov_aln
  doc: "=          int     0       maximum coverage of alignment data; a\nseed read\
    \ with more than MAX_COV_ALN\naverage depth of coverage of the\nlongest alignments\
    \ will be capped,\nexcess shorter alignments will be\nignored"
  type: boolean?
  inputBinding:
    prefix: --max_cov_aln
- id: in_min_len_aln
  doc: "=          int     0       minimum length of a sequence in an\nalignment to\
    \ be used in consensus; any\nshorter sequence will be completely\nignored"
  type: boolean?
  inputBinding:
    prefix: --min_len_aln
- id: in_min_n_read
  doc: "=           int     10      1 + minimum number of reads used in\ngenerating\
    \ the consensus; a seed read\nwith fewer alignments will be\ncompletely ignored"
  type: boolean?
  inputBinding:
    prefix: --min_n_read
- id: in_max_n_read
  doc: "=           int     500     1 + maximum number of reads used in\ngenerating\
    \ the consensus"
  type: boolean?
  inputBinding:
    prefix: --max_n_read
- id: in_trim
  doc: "bool    false   trim the input sequence with k-mer\nspare dynamic programming\
    \ to find the\nmapped range"
  type: boolean?
  inputBinding:
    prefix: --trim
- id: in_output_full
  doc: bool    false   output uncorrected regions too
  type: boolean?
  inputBinding:
    prefix: --output_full
- id: in_output_multi
  doc: bool    false   output multiple correct regions
  type: boolean?
  inputBinding:
    prefix: --output_multi
- id: in_min_idt
  doc: "=              string  \"0.70\"  minimum identity of the alignments\nused\
    \ for correction (32-bit float)"
  type: boolean?
  inputBinding:
    prefix: --min_idt
- id: in__edgetolerance_int
  doc: "=, --edge_tolerance=  int     1000    for trimming, the there is unaligned\n\
    edge leng > edge_tolerance, ignore the\nread"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_trim_size
  doc: "=            int     50      the size for triming both ends from\ninitial\
    \ sparse aligned region"
  type: boolean?
  inputBinding:
    prefix: --trim_size
- id: in__ncore_int
  doc: "=, --n_core=          int     24      number of processes used for\ngenerating\
    \ consensus (not sure this\nlimit works yet); 0 for main process\nonly\n"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_consensus
  doc: --min_cov_aln=          int     10      minimum coverage of alignment data;
    a
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0
cwlVersion: v1.1
baseCommand:
- fc_consensus.exe
