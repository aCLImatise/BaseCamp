class: CommandLineTool
id: Assemble.cwl
inputs:
- id: in_reads_slash_i
  doc: ': the name of the file containing reads'
  type: File
  inputBinding:
    prefix: --reads/-i
- id: in_km_er_length_slash_k
  doc: ': length of kmer, default: 25.'
  type: long
  inputBinding:
    prefix: --kmer_length/-k
- id: in_double_stranded_mode
  doc: ': set it true if double stranded mode.'
  type: boolean
  inputBinding:
    prefix: --double_stranded_mode
- id: in_fr_strand
  doc: "<int>              : strand specific protocol, default: 1\n( 1 : fr-firststrand,\
    \ e.g. dUTP, NSR, NNSR\n2 : fr-secondstrand, e.g. Strandard SOLID )"
  type: boolean
  inputBinding:
    prefix: --fr_strand
- id: in_paired_end
  doc: ': set it true if paired reads.'
  type: boolean
  inputBinding:
    prefix: --paired_end
- id: in_min_seed_coverage
  doc: ': minimum coverage of seed kmer, default: 2.'
  type: long
  inputBinding:
    prefix: --min_seed_coverage
- id: in_min_seed_entropy
  doc: ': minimum entropy of seed kmer, default: 1.5'
  type: double
  inputBinding:
    prefix: --min_seed_entropy
- id: in_min_km_er_coverage
  doc: ': minimum coverage of kmer used to extend, default: 1.'
  type: long
  inputBinding:
    prefix: --min_kmer_coverage
- id: in_min_km_er_entropy
  doc: ': minimum entroy of kmer used to extend, default: 0.0'
  type: double
  inputBinding:
    prefix: --min_kmer_entropy
- id: in_min_junction_coverage
  doc: ': minimum of the coverage of a junction, default: 2.'
  type: long
  inputBinding:
    prefix: --min_junction_coverage
- id: in_min_ratio_non_error
  doc: ": min ratio for low/high alternative extension that is\nnot an error, default:\
    \ 0.05."
  type: double
  inputBinding:
    prefix: --min_ratio_non_error
- id: in_pair_gap_length
  doc: ': gap length of paired reads, default: 200.'
  type: boolean
  inputBinding:
    prefix: --pair_gap_length
- id: in_out_dir_slash_o
  doc: ': name of directory for output, default : ./RawGraphs'
  type: Directory
  inputBinding:
    prefix: --out_dir/-o
- id: in_help_slash_h
  doc: ': display the help information.'
  type: boolean
  inputBinding:
    prefix: --help/-h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir_slash_o
  doc: ': name of directory for output, default : ./RawGraphs'
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir_slash_o)
cwlVersion: v1.1
baseCommand:
- Assemble
