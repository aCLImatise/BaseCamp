class: CommandLineTool
id: somaticseq_parallel.py.cwl
inputs:
- id: in_output_directory
  doc: 'output directory (default: .)'
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_genome_reference
  doc: '.fasta.fai file to get the contigs (default: None)'
  type: File?
  inputBinding:
    prefix: --genome-reference
- id: in_truth_snv
  doc: 'VCF of true hits (default: None)'
  type: string?
  inputBinding:
    prefix: --truth-snv
- id: in_truth_in_del
  doc: 'VCF of true hits (default: None)'
  type: string?
  inputBinding:
    prefix: --truth-indel
- id: in_classifier_snv
  doc: 'RData for SNV (default: None)'
  type: string?
  inputBinding:
    prefix: --classifier-snv
- id: in_classifier_in_del
  doc: 'RData for INDEL (default: None)'
  type: string?
  inputBinding:
    prefix: --classifier-indel
- id: in_pass_threshold
  doc: 'SCORE for PASS (default: 0.5)'
  type: double?
  inputBinding:
    prefix: --pass-threshold
- id: in_low_qual_threshold
  doc: 'SCORE for LowQual (default: 0.1)'
  type: double?
  inputBinding:
    prefix: --lowqual-threshold
- id: in_algorithm
  doc: 'ada or xgboost (default: xgboost)'
  type: string?
  inputBinding:
    prefix: --algorithm
- id: in_homozygous_threshold
  doc: 'VAF for homozygous (default: 0.85)'
  type: double?
  inputBinding:
    prefix: --homozygous-threshold
- id: in_heterozygous_threshold
  doc: 'VAF for heterozygous (default: 0.01)'
  type: double?
  inputBinding:
    prefix: --heterozygous-threshold
- id: in_minimum_mapping_quality
  doc: "Minimum mapping quality below which is considered poor\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --minimum-mapping-quality
- id: in_minimum_base_quality
  doc: "Minimum base quality below which is considered poor\n(default: 5)"
  type: long?
  inputBinding:
    prefix: --minimum-base-quality
- id: in_minimum_num_callers
  doc: "Minimum number of tools to be considered (default:\n0.5)"
  type: long?
  inputBinding:
    prefix: --minimum-num-callers
- id: in_dbsnp_vcf
  doc: 'dbSNP VCF (default: None)'
  type: string?
  inputBinding:
    prefix: --dbsnp-vcf
- id: in_cosmic_vcf
  doc: 'COSMIC VCF (default: None)'
  type: string?
  inputBinding:
    prefix: --cosmic-vcf
- id: in_inclusion_region
  doc: 'inclusion bed (default: None)'
  type: string?
  inputBinding:
    prefix: --inclusion-region
- id: in_exclusion_region
  doc: 'exclusion bed (default: None)'
  type: string?
  inputBinding:
    prefix: --exclusion-region
- id: in_threads
  doc: 'number of threads (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_somatic_seq_train
  doc: "Invoke training mode with ground truths (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --somaticseq-train
- id: in_seed
  doc: 'seed for xgboost training (default: 0)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_tree_depth
  doc: 'max tree depth for xgboost training (default: 12)'
  type: long?
  inputBinding:
    prefix: --tree-depth
- id: in_iterations
  doc: "num boosting rounds for xgboost: default is 500 for\ntraining and 100 for\
    \ predicting, i.e., by default, 500\ntrees are built for classifier, but only\
    \ the first 100\ntrees are used. (default: None)"
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_features_excluded
  doc: "[FEATURES_EXCLUDED [FEATURES_EXCLUDED ...]]\nfeatures to exclude for xgboost\
    \ training. Must be same\nfor train/predict. (default: [])"
  type: boolean?
  inputBinding:
    prefix: --features-excluded
- id: in_keep_intermediates
  doc: 'Keep intermediate files (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep-intermediates
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'output directory (default: .)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/somaticseq:3.6.2--py_0
cwlVersion: v1.1
baseCommand:
- somaticseq_parallel.py
