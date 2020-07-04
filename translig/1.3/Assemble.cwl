class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Assemble.cwl
inputs:
- id: km_er_length_slash_k
  doc: ': length of kmer, default: 25.'
  type: long
  inputBinding:
    prefix: --kmer_length/-k
- id: double_stranded_mode
  doc: ': set it true if double stranded mode.'
  type: boolean
  inputBinding:
    prefix: --double_stranded_mode
- id: fr_strand
  doc: '<int>              : strand specific protocol, default: 1  ( 1 : fr-firststrand,
    e.g. dUTP, NSR, NNSR  2 : fr-secondstrand, e.g. Strandard SOLID ) '
  type: boolean
  inputBinding:
    prefix: --fr_strand
- id: paired_end
  doc: ': set it true if paired reads.'
  type: boolean
  inputBinding:
    prefix: --paired_end
- id: min_seed_coverage
  doc: ': minimum coverage of seed kmer, default: 2.'
  type: long
  inputBinding:
    prefix: --min_seed_coverage
- id: min_seed_entropy
  doc: ': minimum entropy of seed kmer, default: 1.5'
  type: double
  inputBinding:
    prefix: --min_seed_entropy
- id: min_km_er_coverage
  doc: ': minimum coverage of kmer used to extend, default: 1.'
  type: long
  inputBinding:
    prefix: --min_kmer_coverage
- id: min_km_er_entropy
  doc: ': minimum entroy of kmer used to extend, default: 0.0'
  type: double
  inputBinding:
    prefix: --min_kmer_entropy
- id: min_junction_coverage
  doc: ': minimum of the coverage of a junction, default: 2.'
  type: long
  inputBinding:
    prefix: --min_junction_coverage
- id: min_ratio_non_error
  doc: ': min ratio for low/high alternative extension that is  not an error, default:
    0.05.'
  type: double
  inputBinding:
    prefix: --min_ratio_non_error
- id: pair_gap_length
  doc: ': gap length of paired reads, default: 200.'
  type: boolean
  inputBinding:
    prefix: --pair_gap_length
- id: out_dir_slash_o
  doc: ': name of directory for output, default : ./RawGraphs '
  type: string
  inputBinding:
    prefix: --out_dir/-o
- id: help_slash_h
  doc: ': display the help information.'
  type: boolean
  inputBinding:
    prefix: --help/-h
- id: reads_slash_km_ers
  doc: ''
  type: boolean
  inputBinding:
    prefix: --reads/--kmers
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- Assemble
