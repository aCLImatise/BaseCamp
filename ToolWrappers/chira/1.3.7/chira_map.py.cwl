class: CommandLineTool
id: chira_map.py.cwl
inputs:
- id: in__aligner_alignment
  doc: ', --aligner        Alignment program to use, bwa or clan (default: bwa)'
  type: boolean
  inputBinding:
    prefix: -a
- id: in__queryfasta_path
  doc: ', --query_fasta    Path to query fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__outdir_output
  doc: ', --outdir         Output directory path for the analysis (default: None)'
  type: File
  inputBinding:
    prefix: -o
- id: in_x_one
  doc: ', --index1        first prioroty index file (default: None)'
  type: boolean
  inputBinding:
    prefix: -x1
- id: in_x_two
  doc: ', --index2        second priority index file (default: None)'
  type: boolean
  inputBinding:
    prefix: -x2
- id: in_fone
  doc: ', --ref_fasta1    First prioroty fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f1
- id: in_f_two
  doc: ', --ref_fasta2    second priority fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f2
- id: in_build
  doc: "Build indices from reference fasta files (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --build
- id: in__processes_number
  doc: ', --processes      Number of processes to use (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__stranded_strandspecificity
  doc: ", --stranded       Strand-specificity of input samples. fw = map to\ntranscript\
    \ strand; rc = map to reverse compliment of\ntranscript strand; both = try to\
    \ map on both strnads\n(default: fw)"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_lone
  doc: ", --seed_length1\nSeed length for 1st mapping iteration. bwa-mem\nparameter\
    \ \"-k\" (default: 12)"
  type: boolean
  inputBinding:
    prefix: -l1
- id: in_l_two
  doc: ", --seed_length2\nSeed length for 2nd mapping iteration. bwa-mem\nparameter\
    \ \"-k\" (default: 16)"
  type: boolean
  inputBinding:
    prefix: -l2
- id: in_s_one
  doc: ", --align_score1\nMinimum alignment score in 1st mapping iteration. bwa-\n\
    mem parameter \"-T\" and clan_search parameter \"-l\"\n(default: 18)"
  type: boolean
  inputBinding:
    prefix: -s1
- id: in_s_two
  doc: ", --align_score2\nMinimum alignment score in 2nd mapping iteration. It\nmust\
    \ be smaller than --align_score1 parameter. bwa-mem\nparameter \"-T\" and clan_search\
    \ parameter \"-l\"\n(default: 16)"
  type: boolean
  inputBinding:
    prefix: -s2
- id: in_ma_one
  doc: ', --match1       Matching score for 1st mapping iteration. (default: 1)'
  type: boolean
  inputBinding:
    prefix: -ma1
- id: in_mm_one
  doc: ", --mismatch1    Mismatch penalty for 1st mapping iteration. (default:\n4)"
  type: boolean
  inputBinding:
    prefix: -mm1
- id: in_ma_two
  doc: ', --match2       Matching score for 2nd mapping iteration. (default: 1)'
  type: boolean
  inputBinding:
    prefix: -ma2
- id: in_mm_two
  doc: ", --mismatch2    Mismatch penalty for 2nd mapping iteration. (default:\n6)"
  type: boolean
  inputBinding:
    prefix: -mm2
- id: in_go_one
  doc: ", --gapopen1     Gap opening penalty for 1st mapping iteration.\n(default:\
    \ 6)"
  type: boolean
  inputBinding:
    prefix: -go1
- id: in_ge_one
  doc: ", --gapext1      Gap extension penalty for 1st mapping iteration.\n(default:\
    \ 1)"
  type: boolean
  inputBinding:
    prefix: -ge1
- id: in_go_two
  doc: ", --gapopen2     Gap opening penalty for 2nd mapping iteration.\n(default:\
    \ 100)"
  type: boolean
  inputBinding:
    prefix: -go2
- id: in_ge_two
  doc: ", --gapext2      Gap extension penalty for 2nd mapping iteration.\n(default:\
    \ 100)"
  type: boolean
  inputBinding:
    prefix: -ge2
- id: in_hone
  doc: ', --nhits1        Number of allowed multi hits per read (default: 50)'
  type: boolean
  inputBinding:
    prefix: -h1
- id: in_h_two
  doc: ", --nhits2        Number of allowed multi hits per read in 2nd iteration\n\
    (default: 100)"
  type: boolean
  inputBinding:
    prefix: -h2
- id: in_co
  doc: ", --chimeric_overlap\nMaximum number of bases allowed between the chimeric\n\
    segments of a read (default: 2)"
  type: boolean
  inputBinding:
    prefix: -co
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outdir_output
  doc: ', --outdir         Output directory path for the analysis (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in__outdir_output)
cwlVersion: v1.1
baseCommand:
- chira_map.py
