class: CommandLineTool
id: somaticseq_parallel.py.cwl
inputs:
- id: output_directory
  doc: 'output directory (default: .)'
  type: string
  inputBinding:
    prefix: --output-directory
- id: genome_reference
  doc: '.fasta.fai file to get the contigs (default: None)'
  type: string
  inputBinding:
    prefix: --genome-reference
- id: truth_snv
  doc: 'VCF of true hits (default: None)'
  type: string
  inputBinding:
    prefix: --truth-snv
- id: truth_in_del
  doc: 'VCF of true hits (default: None)'
  type: string
  inputBinding:
    prefix: --truth-indel
- id: classifier_snv
  doc: 'RData for SNV (default: None)'
  type: string
  inputBinding:
    prefix: --classifier-snv
- id: classifier_in_del
  doc: 'RData for INDEL (default: None)'
  type: string
  inputBinding:
    prefix: --classifier-indel
- id: pass_threshold
  doc: 'SCORE for PASS (default: 0.5)'
  type: string
  inputBinding:
    prefix: --pass-threshold
- id: low_qual_threshold
  doc: 'SCORE for LowQual (default: 0.1)'
  type: string
  inputBinding:
    prefix: --lowqual-threshold
- id: algorithm
  doc: 'ada or xgboost (default: ada)'
  type: string
  inputBinding:
    prefix: --algorithm
- id: homozygous_threshold
  doc: 'VAF for homozygous (default: 0.85)'
  type: string
  inputBinding:
    prefix: --homozygous-threshold
- id: heterozygous_threshold
  doc: 'VAF for heterozygous (default: 0.01)'
  type: string
  inputBinding:
    prefix: --heterozygous-threshold
- id: minimum_mapping_quality
  doc: 'Minimum mapping quality below which is considered poor (default: 1)'
  type: long
  inputBinding:
    prefix: --minimum-mapping-quality
- id: minimum_base_quality
  doc: 'Minimum base quality below which is considered poor (default: 5)'
  type: long
  inputBinding:
    prefix: --minimum-base-quality
- id: minimum_num_callers
  doc: 'Minimum number of tools to be considered (default: 0.5)'
  type: long
  inputBinding:
    prefix: --minimum-num-callers
- id: dbsnp_vcf
  doc: 'dbSNP VCF (default: None)'
  type: string
  inputBinding:
    prefix: --dbsnp-vcf
- id: cosmic_vcf
  doc: 'COSMIC VCF (default: None)'
  type: string
  inputBinding:
    prefix: --cosmic-vcf
- id: inclusion_region
  doc: 'inclusion bed (default: None)'
  type: string
  inputBinding:
    prefix: --inclusion-region
- id: exclusion_region
  doc: 'exclusion bed (default: None)'
  type: string
  inputBinding:
    prefix: --exclusion-region
- id: threads
  doc: 'number of threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: keep_intermediates
  doc: 'Keep intermediate files (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-intermediates
- id: somatic_seq_train
  doc: 'Invoke training mode with ground truths (default: False)'
  type: boolean
  inputBinding:
    prefix: --somaticseq-train
outputs: []
cwlVersion: v1.1
baseCommand:
- somaticseq_parallel.py
