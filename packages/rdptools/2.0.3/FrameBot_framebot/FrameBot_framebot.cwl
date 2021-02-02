class: CommandLineTool
id: FrameBot_framebot.cwl
inputs:
- id: in_alignment_mode
  doc: 'Alignment mode: glocal, local or global (default = glocal)'
  type: string
  inputBinding:
    prefix: --alignment-mode
- id: in_de_novo_abund_cut_off
  doc: minimum abundance for de-novo mode. default = 10
  type: long
  inputBinding:
    prefix: --denovo-abund-cutoff
- id: in_de_novo_id_cut_off
  doc: "maxmimum aa identity cutoff for query to be added to refset for de-novo mode.\
    \ default\n= 0.7"
  type: double
  inputBinding:
    prefix: --denovo-id-cutoff
- id: in_gap_ext_penalty
  doc: gap extension penalty for no-metric-search ONLY. Default is -1
  type: long
  inputBinding:
    prefix: --gap-ext-penalty
- id: in_frameshift_penalty
  doc: frameshift penalty for no-metric-search ONLY. Default is -10
  type: long
  inputBinding:
    prefix: --frameshift-penalty
- id: in_gap_open_penalty
  doc: gap opening penalty for no-metric-search ONLY. Default is -10
  type: long
  inputBinding:
    prefix: --gap-open-penalty
- id: in_identity_cut_off
  doc: Percent identity cutoff [0-1] (default = .4)
  type: double
  inputBinding:
    prefix: --identity-cutoff
- id: in_knn
  doc: "The top k closest targets from kmer prefilter step. Set k=0 to disable this\
    \ step.\n(default = 10)"
  type: long
  inputBinding:
    prefix: --knn
- id: in_length_cut_off
  doc: Length cutoff in number of amino acids (default = 80)
  type: long
  inputBinding:
    prefix: --length-cutoff
- id: in_max_radius
  doc: "maximum radius for metric-search ONLY, range [1-2147483647], default uses\
    \ the\nmaxRadius specified in the index file"
  type: long
  inputBinding:
    prefix: --max-radius
- id: in_no_metric_search
  doc: Disable metric search (provide fasta file of seeds instead of index file)
  type: boolean
  inputBinding:
    prefix: --no-metric-search
- id: in_result_stem
  doc: Result file name stem (default=stem of query nucl file)
  type: File
  inputBinding:
    prefix: --result-stem
- id: in_quality_file
  doc: Sequence quality data
  type: File
  inputBinding:
    prefix: --quality-file
- id: in_transl_table
  doc: "Protein translation table to use (integer based on ncbi's translation tables,\n\
    default=11 bacteria/archaea)"
  type: long
  inputBinding:
    prefix: --transl-table
- id: in_word_size
  doc: "The word size used to find closest protein targets. (default = 4, recommended\
    \ range [3\n- 6])"
  type: long
  inputBinding:
    prefix: --word-size
- id: in_scoring_matrix
  doc: the protein scoring matrix for no-metric-search ONLY. Default is Blosum62
  type: long
  inputBinding:
    prefix: --scoring-matrix
- id: in_de_novo
  doc: "Enable de novo mode to add abundant query seqs to refset. Only works for\n\
    no-metric-search"
  type: boolean
  inputBinding:
    prefix: --de-novo
- id: in_frame_bot_main
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seed_or_index_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_query_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- FrameBot
- framebot
