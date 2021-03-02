class: CommandLineTool
id: checkv_complete_genomes.cwl
inputs:
- id: in_tr_min_len
  doc: Min length of TR (20)
  type: long?
  inputBinding:
    prefix: --tr_min_len
- id: in_tr_max_count
  doc: Max occurences of TR per contig (8)
  type: long?
  inputBinding:
    prefix: --tr_max_count
- id: in_tr_max_am_big
  doc: Max fraction of TR composed of Ns (0.20)
  type: double?
  inputBinding:
    prefix: --tr_max_ambig
- id: in_tr_max_base_freq
  doc: "Max fraction of TR composed of single nucleotide\n(0.75)"
  type: double?
  inputBinding:
    prefix: --tr_max_basefreq
- id: in_km_er_max_freq
  doc: "Max kmer frequency (1.5). Computed by splitting genome\ninto kmers, counting\
    \ occurence of each kmer, and\ntaking the average count. Expected value of 1.0\
    \ for no\nduplicated regions; 2.0 for the same genome repeated\nback-to-back"
  type: double?
  inputBinding:
    prefix: --kmer_max_freq
- id: in_quiet
  doc: Suppress logging messages
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_input
  doc: Input viral sequences in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkv:0.7.0--py_1
cwlVersion: v1.1
baseCommand:
- checkv
- complete_genomes
