class: CommandLineTool
id: chira_extract.py.cwl
inputs:
- id: in__loci_file
  doc: ', --loci           Input BED file with alignments (default: None)'
  type: boolean
  inputBinding:
    prefix: -l
- id: in__path_output
  doc: ', --out            Path to output directory (default: None)'
  type: File
  inputBinding:
    prefix: -o
- id: in__gtf_gtf
  doc: ', --gtf            Annotation GTF file (default: None)'
  type: boolean
  inputBinding:
    prefix: -g
- id: in__processes_number
  doc: ', --processes      Number of processes to use (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_tc
  doc: ", --tpm_cutoff    Transcripts with less than this percentile TPMs will\nbe\
    \ discarded in the final output. [0-1.0] (default: 0)"
  type: boolean
  inputBinding:
    prefix: -tc
- id: in_sc
  doc: ", --score_cutoff\nHybrids with less than this score will be discarded in\n\
    the final output. [0-1.0] (default: 0.0)"
  type: boolean
  inputBinding:
    prefix: -sc
- id: in_co
  doc: ", --chimeric_overlap\nMaximum number of bases allowed between the chimeric\n\
    segments of a read (default: 2)"
  type: boolean
  inputBinding:
    prefix: -co
- id: in_hybridize
  doc: 'Hybridize the predicted chimeras (default: False)'
  type: boolean
  inputBinding:
    prefix: --hybridize
- id: in_no_seed
  doc: 'Do not enforce seed interactions (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_seed
- id: in_acc
  doc: ", --accessibility\nIntaRNA accessibility: C (compute) or N (not)\n(default:\
    \ N)"
  type: boolean
  inputBinding:
    prefix: -acc
- id: in__intarnamode_mode
  doc: ", --intarna_mode   IntaRNA mode: H (heuristic), M (exact), S (seed-only)\n\
    (default: H)"
  type: boolean
  inputBinding:
    prefix: -m
- id: in__temperature_intarna
  doc: ", --temperature    IntaRNA temperature parameter in Celsius to setup the\n\
    VRNA energy parameters (default: 37)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_sbp
  doc: ", --seed_bp      IntaRNA --seedBP parameter: number of inter-molecular\nbase\
    \ pairs within the seed region (default: 5)"
  type: boolean
  inputBinding:
    prefix: -sbp
- id: in_smp_u
  doc: ", --seed_min_pu\nIntaRNA --seedMinPu parameter: minimal unpaired\nprobability\
    \ (per sequence) a seed region may have\n(default: 0)"
  type: boolean
  inputBinding:
    prefix: -smpu
- id: in_acc_w
  doc: ", --acc_width   IntaRNA --accW parameter: sliding window size for\naccessibility\
    \ computation (default: 150)"
  type: boolean
  inputBinding:
    prefix: -accw
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
- id: in__ref_reference
  doc: ', --ref            Reference fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_summer_ize
  doc: 'Summerize interactions at loci level (default: False)'
  type: boolean
  inputBinding:
    prefix: --summerize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__path_output
  doc: ', --out            Path to output directory (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in__path_output)
cwlVersion: v1.1
baseCommand:
- chira_extract.py
