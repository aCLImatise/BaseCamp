class: CommandLineTool
id: sword.cwl
inputs:
- id: in_query
  doc: "(required)\ninput fasta database query file"
  type: File
  inputBinding:
    prefix: --query
- id: in_target
  doc: "(required)\ninput fasta database target file"
  type: File
  inputBinding:
    prefix: --target
- id: in_gap_open
  doc: "default: 10\ngap opening penalty, must be given as a positive integer"
  type: long
  inputBinding:
    prefix: --gap-open
- id: in_gap_extend
  doc: "default: 1\ngap extension penalty, must be given as a positive integer and\n\
    must be less or equal to gap opening penalty"
  type: long
  inputBinding:
    prefix: --gap-extend
- id: in_matrix
  doc: "default: BLOSUM_62\nsimilarity matrix, can be one of the following:\nBLOSUM_45\n\
    BLOSUM_50\nBLOSUM_62\nBLOSUM_80\nBLOSUM_90\nPAM_30\nPAM_70\nPAM_250"
  type: long
  inputBinding:
    prefix: --matrix
- id: in_out
  doc: "default: stdout\noutput file for the alignment"
  type: File
  inputBinding:
    prefix: --out
- id: in_out_fmt
  doc: "default: bm9\nout format for the output file, must be one of the following:\n\
    bm0      - blast m0 output format\nbm8      - blast m8 tabular output format\n\
    bm9      - blast m9 commented tabular output format"
  type: File
  inputBinding:
    prefix: --outfmt
- id: in_evalue
  doc: "default: 10.0\nevalue threshold, alignments with higher evalue are filtered,\n\
    must be given as a positive float"
  type: double
  inputBinding:
    prefix: --evalue
- id: in_max_aligns
  doc: "default: 10\nmaximum number of alignments to be outputted"
  type: long
  inputBinding:
    prefix: --max-aligns
- id: in_algorithm
  doc: "default: SW\nalgorithm used for alignment, must be one of the following:\n\
    SW - Smith-Waterman local alignment\nNW - Needleman-Wunsch global alignment\n\
    HW - semiglobal alignment\nOV - overlap alignment"
  type: string
  inputBinding:
    prefix: --algorithm
- id: in_km_er_length
  doc: "default: 3\nlength of kmers used for database search\npossible values: 3,\
    \ 4, 5"
  type: long
  inputBinding:
    prefix: --kmer-length
- id: in_max_candidates
  doc: "default: 30000\nnumber of target sequences (per query sequence) passed\nto\
    \ the alignment part"
  type: long
  inputBinding:
    prefix: --max-candidates
- id: in_threshold
  doc: "default: 13\nminimum score for two kmers to trigger a hit\nif 0 given, only\
    \ exact matching kmers are checked"
  type: long
  inputBinding:
    prefix: --threshold
- id: in_threads
  doc: "default: hardware concurrency / 2\nnumber of threads used in thread pool"
  type: long
  inputBinding:
    prefix: --threads
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "default: stdout\noutput file for the alignment"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_fmt
  doc: "default: bm9\nout format for the output file, must be one of the following:\n\
    bm0      - blast m0 output format\nbm8      - blast m8 tabular output format\n\
    bm9      - blast m9 commented tabular output format"
  type: File
  outputBinding:
    glob: $(inputs.in_out_fmt)
cwlVersion: v1.1
baseCommand:
- sword
