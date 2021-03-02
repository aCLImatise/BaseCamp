class: CommandLineTool
id: SSeq_tsv2vcf.py.cwl
inputs:
- id: in_tsv_in
  doc: 'TSV in (default: None)'
  type: string?
  inputBinding:
    prefix: --tsv-in
- id: in_vcf_out
  doc: 'VCF iut (default: None)'
  type: string?
  inputBinding:
    prefix: --vcf-out
- id: in_pass_threshold
  doc: 'Above which is automatically PASS (default: 0.5)'
  type: double?
  inputBinding:
    prefix: --pass-threshold
- id: in_low_qual_threshold
  doc: 'Low quality subject to lenient filter (default: 0.1)'
  type: double?
  inputBinding:
    prefix: --lowqual-threshold
- id: in_hom_threshold
  doc: 'The VAF to be labeled 1/1 in GT (default: 0.85)'
  type: double?
  inputBinding:
    prefix: --hom-threshold
- id: in_het_threshold
  doc: 'The VAF to be labeled 0/1 in GT (default: 0.01)'
  type: double?
  inputBinding:
    prefix: --het-threshold
- id: in_normal_sample_name
  doc: 'Normal Sample Name (default: NORMAL)'
  type: string?
  inputBinding:
    prefix: --normal-sample-name
- id: in_tumor_sample_name
  doc: 'Tumor Sample Name (default: TUMOR)'
  type: string?
  inputBinding:
    prefix: --tumor-sample-name
- id: in_tools
  doc: "[INDIVIDUAL_MUTATION_TOOLS [INDIVIDUAL_MUTATION_TOOLS ...]], --individual-mutation-tools\
    \ [INDIVIDUAL_MUTATION_TOOLS [INDIVIDUAL_MUTATION_TOOLS ...]]\nA list of all tools\
    \ used. Possible values are\nCGA/MuTect/MuTect2 (M), VarScan2 (V), JointSNVMix2\n\
    (J), SomaticSniper (S), VarDict (D), MuSE (U), LoFreq\n(L), Scalpel (P), Strelka\
    \ (K), TNscope (T), and/or\nPlatypus (Y) (default: None)"
  type: boolean?
  inputBinding:
    prefix: -tools
- id: in_emit_all
  doc: 'Flag it to print out everything (default: False)'
  type: boolean?
  inputBinding:
    prefix: --emit-all
- id: in_phred_scale
  doc: "Flag it to print out Phred scale QUAL (proper VCF\nformat but more annoying\
    \ to filter) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --phred-scale
- id: in_single_sample
  doc: 'Tumor-only mode (default: False)'
  type: boolean?
  inputBinding:
    prefix: --single-sample
- id: in_paired_samples
  doc: "Paired tumor-normal samples (default: True)\n"
  type: boolean?
  inputBinding:
    prefix: --paired-samples
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/somaticseq:3.6.2--py_0
cwlVersion: v1.1
baseCommand:
- SSeq_tsv2vcf.py
