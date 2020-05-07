class: CommandLineTool
id: SSeq_tsv2vcf.py.cwl
inputs:
- id: tsv_in
  doc: 'TSV in (default: None)'
  type: string
  inputBinding:
    prefix: --tsv-in
- id: vcf_out
  doc: 'VCF iut (default: None)'
  type: string
  inputBinding:
    prefix: --vcf-out
- id: pass_threshold
  doc: 'Above which is automatically PASS (default: 0.5)'
  type: string
  inputBinding:
    prefix: --pass-threshold
- id: low_qual_threshold
  doc: 'Low quality subject to lenient filter (default: 0.1)'
  type: string
  inputBinding:
    prefix: --lowqual-threshold
- id: hom_threshold
  doc: 'The VAF to be labeled 1/1 in GT (default: 0.85)'
  type: string
  inputBinding:
    prefix: --hom-threshold
- id: het_threshold
  doc: 'The VAF to be labeled 0/1 in GT (default: 0.01)'
  type: string
  inputBinding:
    prefix: --het-threshold
- id: normal_sample_name
  doc: 'Normal Sample Name (default: NORMAL)'
  type: string
  inputBinding:
    prefix: --normal-sample-name
- id: tumor_sample_name
  doc: 'Tumor Sample Name (default: TUMOR)'
  type: string
  inputBinding:
    prefix: --tumor-sample-name
- id: tools
  doc: '[INDIVIDUAL_MUTATION_TOOLS [INDIVIDUAL_MUTATION_TOOLS ...]], --individual-mutation-tools
    [INDIVIDUAL_MUTATION_TOOLS [INDIVIDUAL_MUTATION_TOOLS ...]] A list of all tools
    used. Possible values are CGA/MuTect/MuTect2 (M), VarScan2 (V), JointSNVMix2 (J),
    SomaticSniper (S), VarDict (D), MuSE (U), LoFreq (L), Scalpel (P), Strelka (K),
    TNscope (T), and/or Platypus (Y) (default: None)'
  type: boolean
  inputBinding:
    prefix: -tools
- id: emit_all
  doc: 'Flag it to print out everything (default: False)'
  type: boolean
  inputBinding:
    prefix: --emit-all
- id: phred_scale
  doc: 'Flag it to print out Phred scale QUAL (proper VCF format but more annoying
    to filter) (default: False)'
  type: boolean
  inputBinding:
    prefix: --phred-scale
- id: single_sample
  doc: 'Tumor-only mode (default: False)'
  type: boolean
  inputBinding:
    prefix: --single-sample
- id: paired_samples
  doc: 'Paired tumor-normal samples (default: True)'
  type: boolean
  inputBinding:
    prefix: --paired-samples
outputs: []
cwlVersion: v1.1
baseCommand:
- SSeq_tsv2vcf.py
