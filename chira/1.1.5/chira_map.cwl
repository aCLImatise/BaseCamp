class: CommandLineTool
id: chira_map.py.cwl
inputs:
- id: a
  doc: ', --aligner        Alignment program to use, bwa or clan (default: bwa)'
  type: boolean
  inputBinding:
    prefix: -a
- id: i
  doc: ', --query_fasta    Path to query fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ', --outdir         Output directory path for the analysis (default: None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: x1
  doc: ', --index1        first prioroty index file (default: None)'
  type: boolean
  inputBinding:
    prefix: -x1
- id: x2
  doc: ', --index2        second priority index file (default: None)'
  type: boolean
  inputBinding:
    prefix: -x2
- id: f1
  doc: ', --ref_fasta1    First prioroty fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f1
- id: f2
  doc: ', --ref_fasta2    second priority fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f2
- id: build
  doc: 'Build indices from reference fasta files (default: False)'
  type: boolean
  inputBinding:
    prefix: --build
- id: p
  doc: ', --processes      Number of processes to use (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: ', --stranded       Strand-specificity of input samples. fw = map to transcript
    strand; rc = map to reverse compliment of transcript strand; both = try to map
    on both strnads (default: fw)'
  type: boolean
  inputBinding:
    prefix: -s
- id: l1
  doc: ', --seed_length1  Seed length for 1st mapping iteration. bwa-mem parameter
    "-k" (default: 12)'
  type: boolean
  inputBinding:
    prefix: -l1
- id: l2
  doc: ', --seed_length2  Seed length for 2nd mapping iteration. bwa-mem parameter
    "-k" (default: 6)'
  type: boolean
  inputBinding:
    prefix: -l2
- id: s1
  doc: ', --align_score1  Minimum alignment score in 1st mapping iteration. bwa- mem
    parameter "-T" and clan_search parameter "-l" (default: 18)'
  type: boolean
  inputBinding:
    prefix: -s1
- id: s2
  doc: ', --align_score2  Minimum alignment score in 2nd mapping iteration. It must
    be smaller than --align_score1 parameter. bwa-mem parameter "-T" and clan_search
    parameter "-l" (default: 10)'
  type: boolean
  inputBinding:
    prefix: -s2
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
