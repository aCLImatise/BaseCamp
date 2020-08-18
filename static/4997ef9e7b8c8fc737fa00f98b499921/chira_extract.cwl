class: CommandLineTool
id: ../../../chira_extract.py.cwl
inputs:
- id: _loci_input
  doc: ', --loci           Input BED file with alignments (default: None)'
  type: boolean
  inputBinding:
    prefix: -l
- id: _output_default
  doc: ', --out            Path to output directory (default: None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: _gtf_annotation
  doc: ', --gtf            Annotation GTF file (default: None)'
  type: boolean
  inputBinding:
    prefix: -g
- id: _processes_number
  doc: ', --processes      Number of processes to use (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: tc
  doc: ', --tpm_cutoff    Transcripts with less than this percentile TPMs will be
    discarded in the final output. [0-1.0] (default: 0)'
  type: boolean
  inputBinding:
    prefix: -tc
- id: sc
  doc: ', --score_cutoff  Hybrids with less than this score will be discarded in the
    final output. [0-1.0] (default: 0.0)'
  type: boolean
  inputBinding:
    prefix: -sc
- id: co
  doc: ', --chimeric_overlap  Maximum number of bases allowed between the chimeric
    segments of a read (default: 2)'
  type: boolean
  inputBinding:
    prefix: -co
- id: hybridize
  doc: 'Hybridize the predicted chimeras (default: False)'
  type: boolean
  inputBinding:
    prefix: --hybridize
- id: no_seed
  doc: 'Do not enforce seed interactions (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_seed
- id: acc
  doc: ', --accessibility  IntaRNA accessibility: C (compute) or N (not) (default:
    N)'
  type: boolean
  inputBinding:
    prefix: -acc
- id: _intarnamode_intarna
  doc: ', --intarna_mode   IntaRNA mode: H (heuristic), M (exact), S (seed-only) (default:
    H)'
  type: boolean
  inputBinding:
    prefix: -m
- id: _temperature_parameter
  doc: ', --temperature    IntaRNA temperature parameter in Celsius to setup the VRNA
    energy parameters (default: 37)'
  type: boolean
  inputBinding:
    prefix: -t
- id: sbp
  doc: ', --seed_bp      IntaRNA --seedBP parameter: number of inter-molecular base
    pairs within the seed region (default: 5)'
  type: boolean
  inputBinding:
    prefix: -sbp
- id: smp_u
  doc: ', --seed_min_pu  IntaRNA --seedMinPu parameter: minimal unpaired probability
    (per sequence) a seed region may have (default: 0)'
  type: boolean
  inputBinding:
    prefix: -smpu
- id: acc_w
  doc: ', --acc_width   IntaRNA --accW parameter: sliding window size for accessibility
    computation (default: 150)'
  type: boolean
  inputBinding:
    prefix: -accw
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
- id: _ref_reference
  doc: ', --ref            Reference fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f
- id: summer_ize
  doc: 'Summerize interactions at loci level (default: False)'
  type: boolean
  inputBinding:
    prefix: --summerize
outputs: []
cwlVersion: v1.1
baseCommand:
- chira_extract.py
