class: CommandLineTool
id: Clustering_rep_seqs.cwl
inputs:
- id: in_use_cluster_id
  doc: Use the cluster id as the seq id.
  type: boolean?
  inputBinding:
    prefix: --use-cluster-id
- id: in_invert
  doc: "Invert preferential sequence id (give preference\nto seqids not in the file)"
  type: boolean?
  inputBinding:
    prefix: --invert
- id: in_id_mapping
  doc: "Id mapping used when clustering [required if\nusing dereplicated seq file]"
  type: File?
  inputBinding:
    prefix: --id-mapping
- id: in_longest
  doc: Select longest sequences instead of least dist
  type: boolean?
  inputBinding:
    prefix: --longest
- id: in_out
  doc: Output directory (default=.)
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_pref_seq_ids
  doc: Preferential sequence id file
  type: File?
  inputBinding:
    prefix: --pref-seqids
- id: in_one_rep_per_otu
  doc: "One representative sequence for each OTU.\nDefault is false. The default returns\
    \ one rep\nseq for each sample at each OTU"
  type: boolean?
  inputBinding:
    prefix: --one-rep-per-otu
- id: in_squared
  doc: -m,--mask-seq <arg>      Mask sequence id
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory (default=.)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- Clustering
- rep-seqs
