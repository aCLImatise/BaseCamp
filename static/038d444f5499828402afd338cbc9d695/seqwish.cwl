class: CommandLineTool
id: seqwish.cwl
inputs:
- id: in_induce_graph_pafformatted
  doc: "[FILE], --paf-alns=[FILE]       Induce the graph from these PAF\nformatted\
    \ alignments. Optionally, a list\nof filenames and minimum match lengths:\n[file_1]:[min_match_length_1],...\
    \ This\nallows the differential filtering of\nshort matches from some but not\
    \ all\ninputs, in effect allowing `-k` to be\nspecified differently for each input."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_sequences_used_generate
  doc: "[FILE], --seqs=[FILE]           The sequences used to generate the\nalignments\
    \ (FASTA, FASTQ, .seq)"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_build_graph_using
  doc: '[BASE], --base=[BASE]           Build graph using this basename'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_write_graph_file
  doc: '[FILE], --gfa=[FILE]            Write the graph in GFA to FILE'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_use_match_list
  doc: "[FILE], --match-list=[FILE]     Use the sequence match list in FILE to\nsubset\
    \ the input alignments"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_write_graph_vgp
  doc: "[BASE], --vgp-out=[BASE]        Write the graph in VGP format with\nbasename\
    \ FILE"
  type: File
  inputBinding:
    prefix: -o
- id: in_use_many_threads
  doc: '[N], --threads=[N]              Use this many threads during parallel'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_filter_exact_matches
  doc: "[N], --min-match-len=[N]        Filter exact matches below this length.\n\
    This can smooth the graph locally and\nprevent the formation of complex local\n\
    graph topologies from forming due to\ndifferential alignments."
  type: boolean
  inputBinding:
    prefix: -k
- id: in_number_bp_use
  doc: "[N], --transclose-batch=[N]     Number of bp to use for transitive\nclosure\
    \ batch (default 1M)"
  type: boolean
  inputBinding:
    prefix: -B
- id: in_keep_temp
  doc: "keep intermediate files generated during\ngraph induction"
  type: boolean
  inputBinding:
    prefix: --keep-temp
- id: in_debug
  doc: enable debugging
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_steps
  doc: -r[N], --repeat-max=[N]           Limit transitive closure to include no
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_graph_vgp
  doc: "[BASE], --vgp-out=[BASE]        Write the graph in VGP format with\nbasename\
    \ FILE"
  type: File
  outputBinding:
    glob: $(inputs.in_write_graph_vgp)
cwlVersion: v1.1
baseCommand:
- seqwish
