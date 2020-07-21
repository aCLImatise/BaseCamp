class: CommandLineTool
id: ../../../tb_profiler_profile.cwl
inputs:
- id: platform
  doc: 'NGS Platform used to generate data (default: illumina)'
  type: string
  inputBinding:
    prefix: --platform
- id: read_one
  doc: 'First read file (default: None)'
  type: string
  inputBinding:
    prefix: --read1
- id: read_two
  doc: 'Second read file (default: None)'
  type: string
  inputBinding:
    prefix: --read2
- id: bam
  doc: 'BAM file. Make sure it has been generated using the H37Rv genome (GCA_000195955.2)
    (default: None)'
  type: string
  inputBinding:
    prefix: --bam
- id: prefix
  doc: 'Sample prefix for all results generated (default: tbprofiler)'
  type: string
  inputBinding:
    prefix: --prefix
- id: no_trim
  doc: "Don't trim files using trimmomatic (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_trim
- id: db
  doc: 'Mutation panel name (default: tbdb)'
  type: string
  inputBinding:
    prefix: --db
- id: external_db
  doc: 'Path to db files prefix (overrides "--db" parameter) (default: None)'
  type: string
  inputBinding:
    prefix: --external_db
- id: mapper
  doc: 'Mapping tool to use. If you are using nanopore data it will default to minimap2
    (default: bwa)'
  type: string
  inputBinding:
    prefix: --mapper
- id: caller
  doc: 'Variant calling tool to use. (default: bcftools)'
  type: string
  inputBinding:
    prefix: --caller
- id: calling_params
  doc: 'Override default parameters for variant calling (default: None)'
  type: string
  inputBinding:
    prefix: --calling_params
- id: min_depth
  doc: 'Minimum depth required to call variant. Bases with depth below this cutoff
    will be marked as missing (default: 10)'
  type: long
  inputBinding:
    prefix: --min_depth
- id: af
  doc: 'Minimum allele frequency to call variants (default: 0.1)'
  type: string
  inputBinding:
    prefix: --af
- id: reporting_af
  doc: 'Minimum allele frequency to use variants for prediction (default: 0.1)'
  type: string
  inputBinding:
    prefix: --reporting_af
- id: coverage_fraction_threshold
  doc: 'Cutoff used to calculate fraction of region covered by <= this value (default:
    0)'
  type: string
  inputBinding:
    prefix: --coverage_fraction_threshold
- id: missing_cov_threshold
  doc: 'Cutoff used to positions/codons in genes which are missing (default: 10)'
  type: string
  inputBinding:
    prefix: --missing_cov_threshold
- id: threads
  doc: 'Threads to use (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: dir
  doc: 'Storage directory (default: .)'
  type: string
  inputBinding:
    prefix: --dir
- id: txt
  doc: 'Add text output (default: False)'
  type: boolean
  inputBinding:
    prefix: --txt
- id: csv
  doc: 'Add CSV output (default: False)'
  type: boolean
  inputBinding:
    prefix: --csv
- id: pdf
  doc: 'Add PDF output. This requires pdflatex to be installed (default: False)'
  type: boolean
  inputBinding:
    prefix: --pdf
- id: add_columns
  doc: 'Add additional columns found in the mutation database to the text and pdf
    results (default: None)'
  type: string
  inputBinding:
    prefix: --add_columns
- id: meta
  doc: 'Add meta data from a CSV file to the results. The CSV file must contain a
    column labelled "id" with the same value as the prefix argument (default: None)'
  type: string
  inputBinding:
    prefix: --meta
- id: verbose
  doc: 'Verbosity increases from 0 to 2 (default: 0)'
  type: string
  inputBinding:
    prefix: --verbose
- id: no_flag_stat
  doc: "Don't collect flagstats (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_flagstat
- id: no_delly
  doc: "Don't run delly (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_delly
outputs: []
cwlVersion: v1.1
baseCommand:
- tb-profiler
- profile
