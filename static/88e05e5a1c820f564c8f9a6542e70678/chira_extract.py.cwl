class: CommandLineTool
id: chira_extract.py.cwl
inputs:
- id: in_loci
  doc: 'Input BED file with alignments (default: None)'
  type: boolean?
  inputBinding:
    prefix: --loci
- id: in_out
  doc: 'Path to output directory (default: None)'
  type: File?
  inputBinding:
    prefix: --out
- id: in_gtf
  doc: 'Annotation GTF file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --gtf
- id: in_processes
  doc: 'Number of processes to use (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --processes
- id: in_tpm_cut_off
  doc: "Transcripts with less than this percentile TPMs will\nbe discarded in the\
    \ final output. [0-1.0] (default: 0)"
  type: boolean?
  inputBinding:
    prefix: --tpm_cutoff
- id: in_score_cut_off
  doc: "Hybrids with less than this score will be discarded in\nthe final output.\
    \ [0-1.0] (default: 0.0)"
  type: boolean?
  inputBinding:
    prefix: --score_cutoff
- id: in_chimeric_overlap
  doc: "Maximum number of bases allowed between the chimeric\nsegments of a read (default:\
    \ 2)"
  type: boolean?
  inputBinding:
    prefix: --chimeric_overlap
- id: in_hybridize
  doc: 'Hybridize the predicted chimeras (default: False)'
  type: boolean?
  inputBinding:
    prefix: --hybridize
- id: in_no_seed
  doc: 'Do not enforce seed interactions (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no_seed
- id: in_accessibility
  doc: "IntaRNA accessibility: C (compute) or N (not)\n(default: N)"
  type: boolean?
  inputBinding:
    prefix: --accessibility
- id: in_in_tarn_a_mode
  doc: "IntaRNA mode: H (heuristic), M (exact), S (seed-only)\n(default: H)"
  type: boolean?
  inputBinding:
    prefix: --intarna_mode
- id: in_temperature
  doc: "IntaRNA temperature parameter in Celsius to setup the\nVRNA energy parameters\
    \ (default: 37)"
  type: boolean?
  inputBinding:
    prefix: --temperature
- id: in_seed_bp
  doc: "IntaRNA --seedBP parameter: number of inter-molecular\nbase pairs within the\
    \ seed region (default: 5)"
  type: boolean?
  inputBinding:
    prefix: --seed_bp
- id: in_seed_min_pu
  doc: "IntaRNA --seedMinPu parameter: minimal unpaired\nprobability (per sequence)\
    \ a seed region may have\n(default: 0)"
  type: boolean?
  inputBinding:
    prefix: --seed_min_pu
- id: in_acc_width
  doc: "IntaRNA --accW parameter: sliding window size for\naccessibility computation\
    \ (default: 150)"
  type: boolean?
  inputBinding:
    prefix: --acc_width
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
- id: in_ref
  doc: 'Reference fasta file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --ref
- id: in_summer_ize
  doc: 'Summerize interactions at loci level (default: False)'
  type: boolean?
  inputBinding:
    prefix: --summerize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Path to output directory (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- chira_extract.py
