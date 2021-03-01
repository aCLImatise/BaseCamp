class: CommandLineTool
id: scramble.sh.cwl
inputs:
- id: in_out_name
  doc: full path to output file including prefix
  type: File?
  inputBinding:
    prefix: --out-name
- id: in_cluster_file
  doc: full path to cluster file
  type: File?
  inputBinding:
    prefix: --cluster-file
- id: in_n_cluster
  doc: min cluster size to analyze [default 5]
  type: long?
  inputBinding:
    prefix: --nCluster
- id: in_in_del_score
  doc: min indel alignment score to call [default 80]
  type: long?
  inputBinding:
    prefix: --indel-score
- id: in_mei_score
  doc: min mei alignment score to call [default 50]
  type: long?
  inputBinding:
    prefix: --mei-score
- id: in_min_del_len
  doc: minimum deletion length to call [default 50]
  type: long?
  inputBinding:
    prefix: --min-del-len
- id: in_poly_a_frac
  doc: fraction of clipped length for calling polyA tail in MEIs [default 0.75]
  type: long?
  inputBinding:
    prefix: --poly-a-frac
- id: in_pct_align
  doc: percent alignment of clipped read for calling deletionss [default 90]
  type: long?
  inputBinding:
    prefix: --pct-align
- id: in_poly_a_dist
  doc: how far from MEI to look for polyA tail [default 100]
  type: long?
  inputBinding:
    prefix: --poly-a-dist
- id: in_install_dir
  doc: resource directory [default ~/scramble/cluster_analysis/bin/]
  type: Directory?
  inputBinding:
    prefix: --install-dir
- id: in_mei_refs
  doc: full path to MEI reference file (fasta format) [default ~/scramble/cluster_analysis/resources/MEI_consensus_seqs.fa]
  type: File?
  inputBinding:
    prefix: --mei-refs
- id: in_ref
  doc: reference file (fasta format) [default NULL]
  type: File?
  inputBinding:
    prefix: --ref
- id: in_eval_me_is
  doc: evaluate meis
  type: boolean?
  inputBinding:
    prefix: --eval-meis
- id: in_eval_dels
  doc: "evaluate deletions\n"
  type: boolean?
  inputBinding:
    prefix: --eval-dels
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_name
  doc: full path to output file including prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_out_name)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scramble:1.0.1--h516909a_0
cwlVersion: v1.1
baseCommand:
- scramble.sh
