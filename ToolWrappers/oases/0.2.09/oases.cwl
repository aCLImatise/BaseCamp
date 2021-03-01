class: CommandLineTool
id: oases.cwl
inputs:
- id: in_citation
  doc: ': print citation to Oases manuscript and exit'
  type: boolean?
  inputBinding:
    prefix: --citation
- id: in_ins_length_two
  doc: ': expected distance between two paired-end reads in the second short-read
    dataset (default: no read pairing)'
  type: long?
  inputBinding:
    prefix: -ins_length2
- id: in_ins_length_long
  doc: ': expected distance between two long paired-end reads (default: no read pairing)'
  type: long?
  inputBinding:
    prefix: -ins_length_long
- id: in_ins_length
  doc: "*_sd <integer>       : est. standard deviation of respective dataset (default:\
    \ 10% of corresponding length)\n[replace '*' by nothing, '2' or '_long' as necessary]"
  type: boolean?
  inputBinding:
    prefix: -ins_length
- id: in_unused_reads
  doc: ': export unused reads in UnusedReads.fa file (default: no)'
  type: File?
  inputBinding:
    prefix: -unused_reads
- id: in_amos_file
  doc: ': export assembly to AMOS file (default: no export)'
  type: File?
  inputBinding:
    prefix: -amos_file
- id: in_alignments
  doc: ': export a summary of contig alignment to the reference sequences (default:
    no)'
  type: string?
  inputBinding:
    prefix: -alignments
- id: in_cov_cut_off
  doc: ': removal of low coverage nodes AFTER tour bus or allow the system to infer
    it (default: 3)'
  type: long?
  inputBinding:
    prefix: -cov_cutoff
- id: in_min_pair_count
  doc: ': minimum number of paired end connections to justify the scaffolding of two
    long contigs (default: 4)'
  type: long?
  inputBinding:
    prefix: -min_pair_count
- id: in_min_trans_lgth
  doc: ': Minimum length of output transcripts (default: hash-length)'
  type: long?
  inputBinding:
    prefix: -min_trans_lgth
- id: in_paired_cut_off
  doc: ": minimum ratio allowed between the numbers of observed and estimated connecting\
    \ read pairs\nMust be part of the open interval ]0,1[ (default: 0.1)"
  type: double?
  inputBinding:
    prefix: -paired_cutoff
- id: in_merge
  doc: ':Preserve contigs mapping onto long sequences to be preserved from coverage
    cutoff (default: no)'
  type: string?
  inputBinding:
    prefix: -merge
- id: in_edge_fraction_cut_off
  doc: ": Remove edges which represent less than that fraction of a nodes outgoing\
    \ flow\nMust be part of the open interval ]0,1[ (default: 0.01)"
  type: double?
  inputBinding:
    prefix: -edgeFractionCutoff
- id: in_scaffolding
  doc: ': Allow gaps in transcripts (default: no)'
  type: string?
  inputBinding:
    prefix: -scaffolding
- id: in_degree_cut_off
  doc: ": Maximum allowed degree on either end of a contigg to consider it 'unique'\
    \ (default: 3)"
  type: long?
  inputBinding:
    prefix: -degree_cutoff
- id: in_directory
  doc: ': working directory name'
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- oases
