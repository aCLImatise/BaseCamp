class: CommandLineTool
id: findKnownMotifs.pl.cwl
inputs:
- id: in_tsv_sequence_file
  doc: (tsv sequence file)
  type: File?
  inputBinding:
    prefix: -s
- id: in_tsv_group_file
  doc: (tsv group file)
  type: File?
  inputBinding:
    prefix: -g
- id: in_known_motif_file
  doc: '(Known motif file, default: /usr/local/share/homer-4.11-2/.//data/knownTFs/known.motifs)'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_stat
  doc: '(default: hypergeo)'
  type: string?
  inputBinding:
    prefix: -stat
- id: in_p_value
  doc: '<#> (p-value cutoff, default: 0.01)'
  type: boolean?
  inputBinding:
    prefix: -pvalue
- id: in_optimize
  doc: (Optimize motif degeneracy thresholds to maximize enrichment)
  type: boolean?
  inputBinding:
    prefix: -optimize
- id: in_homer
  doc: (use original homer, default, for now...)
  type: boolean?
  inputBinding:
    prefix: -homer
- id: in_homer_two
  doc: (use homer2)
  type: boolean?
  inputBinding:
    prefix: -homer2
- id: in_number_use_homer
  doc: <#> (number of CPUs to use, homer2 only)
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_cache
  doc: '<#> (size in MB of statistics cache, default: 500)'
  type: boolean?
  inputBinding:
    prefix: -cache
- id: in_bits
  doc: (scale logos by information content)
  type: boolean?
  inputBinding:
    prefix: -bits
- id: in_dbview
  doc: (internal option)
  type: boolean?
  inputBinding:
    prefix: -dbview
- id: in_seq_logo
  doc: (Use Weblogo/seqlogo/ghostscript, by default now generates SVG logos)
  type: boolean?
  inputBinding:
    prefix: -seqlogo
- id: in_rna
  doc: (output RNA logos i.e. U instead of T)
  type: boolean?
  inputBinding:
    prefix: -rna
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_known_motif_file
  doc: '(Known motif file, default: /usr/local/share/homer-4.11-2/.//data/knownTFs/known.motifs)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_known_motif_file)
hints: []
cwlVersion: v1.1
baseCommand:
- findKnownMotifs.pl
