class: CommandLineTool
id: seqwish.cwl
inputs:
- id: p
  doc: '[FILE], --paf-alns=[FILE]       Induce the graph from these PAF formatted
    alignments. Optionally, a list of filenames and minimum match lengths: [file_1]:[min_match_length_1],...
    This allows the differential filtering of short matches from some but not all
    inputs, in effect allowing `-k` to be specified differently for each input.'
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: '[FILE], --seqs=[FILE]           The sequences used to generate the alignments
    (FASTA, FASTQ, .seq)'
  type: boolean
  inputBinding:
    prefix: -s
- id: b
  doc: '[BASE], --base=[BASE]           Build graph using this basename'
  type: boolean
  inputBinding:
    prefix: -b
- id: g
  doc: '[FILE], --gfa=[FILE]            Write the graph in GFA to FILE'
  type: boolean
  inputBinding:
    prefix: -g
- id: m
  doc: '[FILE], --match-list=[FILE]     Use the sequence match list in FILE to subset
    the input alignments'
  type: boolean
  inputBinding:
    prefix: -m
- id: o
  doc: '[BASE], --vgp-out=[BASE]        Write the graph in VGP format with basename
    FILE'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: '[N], --threads=[N]              Use this many threads during parallel steps'
  type: boolean
  inputBinding:
    prefix: -t
- id: r
  doc: '[N], --repeat-max=[N]           Limit transitive closure to include no more
    than N copies of a given input base'
  type: boolean
  inputBinding:
    prefix: -r
- id: k
  doc: '[N], --min-match-len=[N]        Filter exact matches below this length. This
    can smooth the graph locally and prevent the formation of complex local graph
    topologies from forming due to differential alignments.'
  type: boolean
  inputBinding:
    prefix: -k
- id: b
  doc: '[N], --transclose-batch=[N]     Number of bp to use for transitive closure
    batch (default 1M)'
  type: boolean
  inputBinding:
    prefix: -B
- id: keep_temp
  doc: keep intermediate files generated during graph induction
  type: boolean
  inputBinding:
    prefix: --keep-temp
- id: debug
  doc: enable debugging
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- seqwish
