class: CommandLineTool
id: chira_map.py.cwl
inputs:
- id: in_aligner
  doc: 'Alignment program to use, bwa or clan (default: bwa)'
  type: boolean?
  inputBinding:
    prefix: --aligner
- id: in_query_fast_a
  doc: 'Path to query fasta file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --query_fasta
- id: in_outdir
  doc: 'Output directory path for the analysis (default: None)'
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_index_one
  doc: 'first prioroty index file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --index1
- id: in_index_two
  doc: 'second priority index file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --index2
- id: in_ref_fast_a_one
  doc: 'First prioroty fasta file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --ref_fasta1
- id: in_ref_fast_a_two
  doc: 'second priority fasta file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --ref_fasta2
- id: in_build
  doc: "Build indices from reference fasta files (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --build
- id: in_processes
  doc: 'Number of processes to use (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --processes
- id: in_stranded
  doc: "Strand-specificity of input samples. fw = map to\ntranscript strand; rc =\
    \ map to reverse compliment of\ntranscript strand; both = try to map on both strnads\n\
    (default: fw)"
  type: boolean?
  inputBinding:
    prefix: --stranded
- id: in_seed_length_one
  doc: "Seed length for 1st mapping iteration. bwa-mem\nparameter \"-k\" (default:\
    \ 12)"
  type: boolean?
  inputBinding:
    prefix: --seed_length1
- id: in_seed_length_two
  doc: "Seed length for 2nd mapping iteration. bwa-mem\nparameter \"-k\" (default:\
    \ 16)"
  type: boolean?
  inputBinding:
    prefix: --seed_length2
- id: in_align_score_one
  doc: "Minimum alignment score in 1st mapping iteration. bwa-\nmem parameter \"-T\"\
    \ and clan_search parameter \"-l\"\n(default: 18)"
  type: boolean?
  inputBinding:
    prefix: --align_score1
- id: in_align_score_two
  doc: "Minimum alignment score in 2nd mapping iteration. It\nmust be smaller than\
    \ --align_score1 parameter. bwa-mem\nparameter \"-T\" and clan_search parameter\
    \ \"-l\"\n(default: 16)"
  type: boolean?
  inputBinding:
    prefix: --align_score2
- id: in_match_one
  doc: 'Matching score for 1st mapping iteration. (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --match1
- id: in_mismatch_one
  doc: "Mismatch penalty for 1st mapping iteration. (default:\n4)"
  type: boolean?
  inputBinding:
    prefix: --mismatch1
- id: in_match_two
  doc: 'Matching score for 2nd mapping iteration. (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --match2
- id: in_mismatch_two
  doc: "Mismatch penalty for 2nd mapping iteration. (default:\n6)"
  type: boolean?
  inputBinding:
    prefix: --mismatch2
- id: in_gap_open_one
  doc: "Gap opening penalty for 1st mapping iteration.\n(default: 6)"
  type: boolean?
  inputBinding:
    prefix: --gapopen1
- id: in_gap_ext_one
  doc: "Gap extension penalty for 1st mapping iteration.\n(default: 1)"
  type: boolean?
  inputBinding:
    prefix: --gapext1
- id: in_gap_open_two
  doc: "Gap opening penalty for 2nd mapping iteration.\n(default: 100)"
  type: boolean?
  inputBinding:
    prefix: --gapopen2
- id: in_gap_ext_two
  doc: "Gap extension penalty for 2nd mapping iteration.\n(default: 100)"
  type: boolean?
  inputBinding:
    prefix: --gapext2
- id: in_n_hits_one
  doc: 'Number of allowed multi hits per read (default: 50)'
  type: boolean?
  inputBinding:
    prefix: --nhits1
- id: in_nh_its_two
  doc: "Number of allowed multi hits per read in 2nd iteration\n(default: 100)"
  type: boolean?
  inputBinding:
    prefix: --nhits2
- id: in_chimeric_overlap
  doc: "Maximum number of bases allowed between the chimeric\nsegments of a read (default:\
    \ 2)"
  type: boolean?
  inputBinding:
    prefix: --chimeric_overlap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory path for the analysis (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- chira_map.py
