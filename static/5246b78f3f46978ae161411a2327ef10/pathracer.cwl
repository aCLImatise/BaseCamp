class: CommandLineTool
id: pathracer.cwl
inputs:
- id: in_global
  doc: perform global-local (aka glocal) HMM matching [default]
  type: boolean?
  inputBinding:
    prefix: --global
- id: in_local
  doc: perform local-local HMM matching
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_length
  doc: 'minimal length of resultant matched sequence; if <=1 then to be multiplied
    on the length of the pHMM [default: 0.9]'
  type: long?
  inputBinding:
    prefix: --length
- id: in_in_del_rate
  doc: 'expected rate of nucleotides indels in graph edges [default: 0]. Used for
    AA pHMM alignment with frame shifts'
  type: long?
  inputBinding:
    prefix: --indel-rate
- id: in_top
  doc: 'extract top N paths [default: 10000]'
  type: long?
  inputBinding:
    prefix: --top
- id: in_threads
  doc: 'the number of parallel threads [default: 16]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_memory
  doc: 'RAM limit for PathRacer in GB (terminates if exceeded) [default: 100]'
  type: long?
  inputBinding:
    prefix: --memory
- id: in_max_size
  doc: 'maximal component size to consider [default: INF]'
  type: long?
  inputBinding:
    prefix: --max-size
- id: in_hmm
  doc: match against HMM(s) [default]
  type: boolean?
  inputBinding:
    prefix: --hmm
- id: in_nt
  doc: match against nucleotide string(s)
  type: boolean?
  inputBinding:
    prefix: --nt
- id: in_aa
  doc: match agains amino acid string(s)
  type: boolean?
  inputBinding:
    prefix: --aa
- id: in_queries
  doc: 'queries names to lookup [default: all queries from input query file]'
  type: File?
  inputBinding:
    prefix: --queries
- id: in_edges
  doc: 'match around particular edges [default: all graph edges]'
  type: string?
  inputBinding:
    prefix: --edges
- id: in_seed_edges
  doc: use graph edges as seeds
  type: boolean?
  inputBinding:
    prefix: --seed-edges
- id: in_seed_scaffolds
  doc: use scaffolds paths as seeds
  type: boolean?
  inputBinding:
    prefix: --seed-scaffolds
- id: in_seed_edges_scaffolds
  doc: use edges AND scaffolds paths as seeds [default]
  type: boolean?
  inputBinding:
    prefix: --seed-edges-scaffolds
- id: in_seed_exhaustive
  doc: exhaustive mode, use ALL edges
  type: boolean?
  inputBinding:
    prefix: --seed-exhaustive
- id: in_seed_edges_one_by_one
  doc: use edges as seeds (1 by 1)
  type: boolean?
  inputBinding:
    prefix: --seed-edges-1-by-1
- id: in_seed_scaffolds_one_by_one
  doc: use scaffolds paths as seeds (1 by 1)
  type: boolean?
  inputBinding:
    prefix: --seed-scaffolds-1-by-1
- id: in_debug
  doc: extensive debug output
  type: string?
  inputBinding:
    prefix: --debug
- id: in_draw
  doc: draw pictures around the interesting edges
  type: boolean?
  inputBinding:
    prefix: --draw
- id: in_re_score
  doc: rescore paths via HMMer
  type: boolean?
  inputBinding:
    prefix: --rescore
- id: in_annotate_graph
  doc: emit paths in GFA graph
  type: boolean?
  inputBinding:
    prefix: --annotate-graph
- id: in_acc
  doc: prefer accessions over names in output
  type: boolean?
  inputBinding:
    prefix: --acc
- id: in_no_ali
  doc: "'t output alignments, so output is smaller"
  type: string?
  inputBinding:
    prefix: --noali
- id: in_report_sequences_evalue_threshold
  doc: report sequences <= this E-value threshold in output
  type: string?
  inputBinding:
    prefix: -E
- id: in_report_sequences_score_threshold
  doc: report sequences >= this score threshold in output
  type: string?
  inputBinding:
    prefix: -T
- id: in_dome
  doc: report domains <= this E-value threshold in output
  type: string?
  inputBinding:
    prefix: --domE
- id: in_do_mt
  doc: report domains >= this score cutoff in output
  type: string?
  inputBinding:
    prefix: --domT
- id: in_ince
  doc: consider sequences <= this E-value threshold as significant
  type: string?
  inputBinding:
    prefix: -incE
- id: in_in_ct
  doc: consider sequences >= this score threshold as significant
  type: string?
  inputBinding:
    prefix: -incT
- id: in_inc_dome
  doc: consider domains <= this E-value threshold as significant
  type: string?
  inputBinding:
    prefix: -incdomE
- id: in_inc_do_mt
  doc: consider domains >= this score threshold as significant
  type: string?
  inputBinding:
    prefix: -incdomT
- id: in_cut_ga
  doc: use profile's GA gathering cutoffs to set all thresholding
  type: boolean?
  inputBinding:
    prefix: --cut_ga
- id: in_cut_nc
  doc: use profile's NC noise cutoffs to set all thresholding
  type: boolean?
  inputBinding:
    prefix: --cut_nc
- id: in_cut_tc
  doc: use profile's TC trusted cutoffs to set all thresholding
  type: boolean?
  inputBinding:
    prefix: --cut_tc
- id: in_max
  doc: Turn all heuristic filters off (less speed, more power)
  type: boolean?
  inputBinding:
    prefix: --max
- id: in_fone
  doc: 'Stage 1 (MSV) threshold: promote hits w/ P <= F1'
  type: long?
  inputBinding:
    prefix: --F1
- id: in_f_two
  doc: 'Stage 2 (Vit) threshold: promote hits w/ P <= F2'
  type: long?
  inputBinding:
    prefix: --F2
- id: in_f_three
  doc: 'Stage 3 (Fwd) threshold: promote hits w/ P <= F3'
  type: long?
  inputBinding:
    prefix: --F3
- id: in_parallel_components
  doc: 'process connected components of neighborhood subgraph in parallel [default:
    false]'
  type: boolean?
  inputBinding:
    prefix: --parallel-components
- id: in_max_insertion_length
  doc: 'maximal allowed number of successive I-emissions [default: 30]'
  type: long?
  inputBinding:
    prefix: --max-insertion-length
- id: in_expand_coef
  doc: 'overhang expansion coefficient for neighborhood search [default: 2]'
  type: long?
  inputBinding:
    prefix: --expand-coef
- id: in_expand_const
  doc: 'const addition to overhang values for neighborhood search [default: 20]'
  type: long?
  inputBinding:
    prefix: --expand-const
- id: in_no_top_score_filter
  doc: 'disable top score Event Graph vertices filter [default: false]'
  type: boolean?
  inputBinding:
    prefix: --no-top-score-filter
- id: in_no_fast_forward
  doc: 'disable fast forward in I-loops processing [default: false]'
  type: boolean?
  inputBinding:
    prefix: --no-fast-forward
- id: in_known_sequences
  doc: FASTA file with known sequnces that should be definitely found
  type: File?
  inputBinding:
    prefix: --known-sequences
- id: in_export_event_graph
  doc: "export event graph in cereal format\n"
  type: boolean?
  inputBinding:
    prefix: --export-event-graph
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0
cwlVersion: v1.1
baseCommand:
- pathracer
