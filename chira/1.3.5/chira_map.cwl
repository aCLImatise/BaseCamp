class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chira_map.py.cwl
inputs:
- id: _aligner_alignment
  doc: ', --aligner        Alignment program to use, bwa or clan (default: bwa)'
  type: boolean
  inputBinding:
    prefix: -a
- id: _queryfasta_path
  doc: ', --query_fasta    Path to query fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -i
- id: _outdir_path
  doc: ', --outdir         Output directory path for the analysis (default: None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: x_one
  doc: ', --index1        first prioroty index file (default: None)'
  type: boolean
  inputBinding:
    prefix: -x1
- id: x_two
  doc: ', --index2        second priority index file (default: None)'
  type: boolean
  inputBinding:
    prefix: -x2
- id: fone
  doc: ', --ref_fasta1    First prioroty fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f1
- id: f_two
  doc: ', --ref_fasta2    second priority fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f2
- id: build
  doc: 'Build indices from reference fasta files (default: False)'
  type: boolean
  inputBinding:
    prefix: --build
- id: _processes_number
  doc: ', --processes      Number of processes to use (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: _stranded_strandspecificity
  doc: ', --stranded       Strand-specificity of input samples. fw = map to transcript
    strand; rc = map to reverse compliment of transcript strand; both = try to map
    on both strnads (default: fw)'
  type: boolean
  inputBinding:
    prefix: -s
- id: lone
  doc: ', --seed_length1  Seed length for 1st mapping iteration. bwa-mem parameter
    "-k" (default: 12)'
  type: boolean
  inputBinding:
    prefix: -l1
- id: l_two
  doc: ', --seed_length2  Seed length for 2nd mapping iteration. bwa-mem parameter
    "-k" (default: 16)'
  type: boolean
  inputBinding:
    prefix: -l2
- id: s_one
  doc: ', --align_score1  Minimum alignment score in 1st mapping iteration. bwa- mem
    parameter "-T" and clan_search parameter "-l" (default: 18)'
  type: boolean
  inputBinding:
    prefix: -s1
- id: s_two
  doc: ', --align_score2  Minimum alignment score in 2nd mapping iteration. It must
    be smaller than --align_score1 parameter. bwa-mem parameter "-T" and clan_search
    parameter "-l" (default: 16)'
  type: boolean
  inputBinding:
    prefix: -s2
- id: ma_one
  doc: ', --match1       Matching score for 1st mapping iteration. (default: 1)'
  type: boolean
  inputBinding:
    prefix: -ma1
- id: mm_one
  doc: ', --mismatch1    Mismatch penalty for 1st mapping iteration. (default: 4)'
  type: boolean
  inputBinding:
    prefix: -mm1
- id: ma_two
  doc: ', --match2       Matching score for 2nd mapping iteration. (default: 1)'
  type: boolean
  inputBinding:
    prefix: -ma2
- id: mm_two
  doc: ', --mismatch2    Mismatch penalty for 2nd mapping iteration. (default: 6)'
  type: boolean
  inputBinding:
    prefix: -mm2
- id: go_one
  doc: ', --gapopen1     Gap opening penalty for 1st mapping iteration. (default:
    6)'
  type: boolean
  inputBinding:
    prefix: -go1
- id: ge_one
  doc: ', --gapext1      Gap extension penalty for 1st mapping iteration. (default:
    1)'
  type: boolean
  inputBinding:
    prefix: -ge1
- id: go_two
  doc: ', --gapopen2     Gap opening penalty for 2nd mapping iteration. (default:
    100)'
  type: boolean
  inputBinding:
    prefix: -go2
- id: ge_two
  doc: ', --gapext2      Gap extension penalty for 2nd mapping iteration. (default:
    100)'
  type: boolean
  inputBinding:
    prefix: -ge2
- id: hone
  doc: ', --nhits1        Number of allowed multi hits per read (default: 50)'
  type: boolean
  inputBinding:
    prefix: -h1
- id: h_two
  doc: ', --nhits2        Number of allowed multi hits per read in 2nd iteration (default:
    100)'
  type: boolean
  inputBinding:
    prefix: -h2
- id: co
  doc: ', --chimeric_overlap  Maximum number of bases allowed between the chimeric
    segments of a read (default: 2)'
  type: boolean
  inputBinding:
    prefix: -co
outputs: []
cwlVersion: v1.1
baseCommand:
- chira_map.py
