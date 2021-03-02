class: CommandLineTool
id: scapp.cwl
inputs:
- id: in_graph
  doc: Assembly graph FASTG file to process
  type: File?
  inputBinding:
    prefix: --graph
- id: in_output_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_max_k
  doc: "Integer reflecting maximum k value used by the\nassembler"
  type: long?
  inputBinding:
    prefix: --max_k
- id: in_min_length
  doc: 'Minimum length required for reporting [default: 1000]'
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_max_cv
  doc: "Coefficient of variation used for pre-selection\n[default: 0.5, higher-->\
    \ less restrictive]"
  type: long?
  inputBinding:
    prefix: --max_CV
- id: in_num_processes
  doc: Number of processes to use
  type: long?
  inputBinding:
    prefix: --num_processes
- id: in_use_scores
  doc: "Boolean flag of whether to use sequence classification\nscores in plasmid\
    \ assembly"
  type: boolean?
  inputBinding:
    prefix: --use_scores
- id: in_use_gene_hits
  doc: "Boolean flag of whether to use plasmid-specific gene\nhits in plasmid assembly"
  type: boolean?
  inputBinding:
    prefix: --use_gene_hits
- id: in_bam
  doc: "BAM file resulting from aligning reads to contigs\nfile, filtering for best\
    \ matches"
  type: File?
  inputBinding:
    prefix: --bam
- id: in_reads_one
  doc: 1st paired-end read file path
  type: long?
  inputBinding:
    prefix: --reads1
- id: in_reads_two
  doc: 1st paired-end read file path
  type: long?
  inputBinding:
    prefix: --reads2
- id: in_plas_class
  doc: "PlasClass score file with scores of the assembly graph\nnodes"
  type: File?
  inputBinding:
    prefix: --plasclass
- id: in_plas_flow
  doc: "PlasFlow score file with scores of the assembly graph\nnodes"
  type: File?
  inputBinding:
    prefix: --plasflow
- id: in_classification_thresh
  doc: threshold for classifying potential plasmid [0.5]
  type: double?
  inputBinding:
    prefix: --classification_thresh
- id: in_gene_match_thresh
  doc: "threshold for % identity and fraction of length to\nmatch plasmid genes [0.75]"
  type: long?
  inputBinding:
    prefix: --gene_match_thresh
- id: in_self_loop_score_thresh
  doc: threshold for self-loop plasmid score [0.9]
  type: double?
  inputBinding:
    prefix: --selfloop_score_thresh
- id: in_self_loop_mate_thresh
  doc: threshold for self-loop off loop mates [0.1]
  type: double?
  inputBinding:
    prefix: --selfloop_mate_thresh
- id: in_chromosome_score_thresh
  doc: "threshold for high confidence chromosome node score\n[0.2]"
  type: double?
  inputBinding:
    prefix: --chromosome_score_thresh
- id: in_chromosome_len_thresh
  doc: "threshold for high confidence chromosome node length\n[10000]"
  type: long?
  inputBinding:
    prefix: --chromosome_len_thresh
- id: in_plasmid_score_thresh
  doc: threshold for high confidence plasmid node score [0.9]
  type: double?
  inputBinding:
    prefix: --plasmid_score_thresh
- id: in_plasmid_len_thresh
  doc: "threshold for high confidence plasmid node length\n[10000]"
  type: long?
  inputBinding:
    prefix: --plasmid_len_thresh
- id: in_good_cyc_dominated_thresh
  doc: "threshold for # of mate-pairs off the cycle in\ndominated node [0.5]\n"
  type: double?
  inputBinding:
    prefix: --good_cyc_dominated_thresh
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scapp:0.1.4--py_0
cwlVersion: v1.1
baseCommand:
- scapp
