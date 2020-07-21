class: CommandLineTool
id: ../../../atlas_genotype.cwl
inputs:
- id: km_er
  doc: kmer length (default:21)
  type: string
  inputBinding:
    prefix: --kmer
- id: tmp
  doc: 'tmp directory (default: /tmp/)'
  type: string
  inputBinding:
    prefix: --tmp
- id: keep_tmp
  doc: Dont remove tmp files
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: skeleton_dir
  doc: directory for skeleton binaries
  type: string
  inputBinding:
    prefix: --skeleton_dir
- id: mc_cortex_three_one_path
  doc: Path to mccortex31. Default mccortex31
  type: string
  inputBinding:
    prefix: --mccortex31_path
- id: threads
  doc: threads
  type: string
  inputBinding:
    prefix: --threads
- id: memory
  doc: memory for graph constuction
  type: string
  inputBinding:
    prefix: --memory
- id: expected_depth
  doc: expected depth
  type: string
  inputBinding:
    prefix: --expected_depth
- id: seq
  doc: sequence files (fasta,fastq,bam)
  type: string[]
  inputBinding:
    prefix: --seq
- id: ctx
  doc: cortex graph binary
  type: string
  inputBinding:
    prefix: --ctx
- id: force
  doc: force
  type: boolean
  inputBinding:
    prefix: --force
- id: ont
  doc: Set default for ONT data
  type: boolean
  inputBinding:
    prefix: --ont
- id: ignore_filtered
  doc: don't include filtered genotypes
  type: string
  inputBinding:
    prefix: --ignore_filtered
- id: model
  doc: species
  type: string
  inputBinding:
    prefix: --model
- id: filters
  doc: don't include filtered genotypes
  type: string[]
  inputBinding:
    prefix: --filters
- id: report_all_calls
  doc: report all calls
  type: boolean
  inputBinding:
    prefix: --report_all_calls
- id: expected_error_rate
  doc: Expected sequencing error rate. Set to 0.15 for ONT genotyping.
  type: string
  inputBinding:
    prefix: --expected_error_rate
- id: min_variant_conf
  doc: minimum genotype confidence for variant genotyping
  type: long
  inputBinding:
    prefix: --min_variant_conf
- id: min_gene_conf
  doc: minimum genotype confidence for gene genotyping
  type: long
  inputBinding:
    prefix: --min_gene_conf
- id: min_gene_percent_co_vg_threshold
  doc: all genes alleles found above this percent coverage will be reported (default
    100 (only best alleles reported))
  type: long
  inputBinding:
    prefix: --min_gene_percent_covg_threshold
- id: quiet
  doc: do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
- id: probe_set
  doc: probe_set
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- atlas
- genotype
