class: CommandLineTool
id: atlas_genotype.cwl
inputs:
- id: in_km_er
  doc: kmer length (default:21)
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_tmp
  doc: 'tmp directory (default: /tmp/)'
  type: Directory?
  inputBinding:
    prefix: --tmp
- id: in_keep_tmp
  doc: Dont remove tmp files
  type: boolean?
  inputBinding:
    prefix: --keep_tmp
- id: in_skeleton_dir
  doc: directory for skeleton binaries
  type: Directory?
  inputBinding:
    prefix: --skeleton_dir
- id: in_mc_cortex_three_one_path
  doc: Path to mccortex31. Default mccortex31
  type: long?
  inputBinding:
    prefix: --mccortex31_path
- id: in_expected_depth
  doc: expected depth
  type: string?
  inputBinding:
    prefix: --expected_depth
- id: in_seq
  doc: sequence files (fasta,fastq,bam)
  type: string[]
  inputBinding:
    prefix: --seq
- id: in_ctx
  doc: cortex graph binary
  type: string?
  inputBinding:
    prefix: --ctx
- id: in_force
  doc: force
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_ont
  doc: Set default for ONT data
  type: boolean?
  inputBinding:
    prefix: --ont
- id: in_ignore_filtered
  doc: don't include filtered genotypes
  type: string?
  inputBinding:
    prefix: --ignore_filtered
- id: in_model
  doc: species
  type: string?
  inputBinding:
    prefix: --model
- id: in_filters
  doc: don't include filtered genotypes
  type: string[]
  inputBinding:
    prefix: --filters
- id: in_report_all_calls
  doc: report all calls
  type: boolean?
  inputBinding:
    prefix: --report_all_calls
- id: in_expected_error_rate
  doc: "Expected sequencing error rate. Set to 0.15 for ONT\ngenotyping."
  type: double?
  inputBinding:
    prefix: --expected_error_rate
- id: in_min_variant_conf
  doc: minimum genotype confidence for variant genotyping
  type: string?
  inputBinding:
    prefix: --min_variant_conf
- id: in_min_gene_conf
  doc: minimum genotype confidence for gene genotyping
  type: long?
  inputBinding:
    prefix: --min_gene_conf
- id: in_min_gene_percent_co_vg_threshold
  doc: "all genes alleles found above this percent coverage\nwill be reported (default\
    \ 100 (only best alleles\nreported))"
  type: long?
  inputBinding:
    prefix: --min_gene_percent_covg_threshold
- id: in_quiet
  doc: do not output warnings to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
- id: in_threads
  doc: -m MEMORY, --memory MEMORY
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- atlas
- genotype
