class: CommandLineTool
id: tb_profiler_profile.cwl
inputs:
- id: in_platform
  doc: 'NGS Platform used to generate data (default: illumina)'
  type: string
  inputBinding:
    prefix: --platform
- id: in_read_one
  doc: 'First read file (default: None)'
  type: long
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: 'Second read file (default: None)'
  type: long
  inputBinding:
    prefix: --read2
- id: in_bam
  doc: "BAM file. Make sure it has been generated using the\nH37Rv genome (GCA_000195955.2)\
    \ (default: None)"
  type: File
  inputBinding:
    prefix: --bam
- id: in_prefix
  doc: "Sample prefix for all results generated (default:\ntbprofiler)"
  type: string
  inputBinding:
    prefix: --prefix
- id: in_no_trim
  doc: "Don't trim files using trimmomatic (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_trim
- id: in_db
  doc: 'Mutation panel name (default: tbdb)'
  type: string
  inputBinding:
    prefix: --db
- id: in_external_db
  doc: "Path to db files prefix (overrides \"--db\" parameter)\n(default: None)"
  type: File
  inputBinding:
    prefix: --external_db
- id: in_mapper
  doc: "Mapping tool to use. If you are using nanopore data it\nwill default to minimap2\
    \ (default: bwa)"
  type: string
  inputBinding:
    prefix: --mapper
- id: in_caller
  doc: 'Variant calling tool to use. (default: bcftools)'
  type: string
  inputBinding:
    prefix: --caller
- id: in_calling_params
  doc: "Override default parameters for variant calling\n(default: None)"
  type: string
  inputBinding:
    prefix: --calling_params
- id: in_min_depth
  doc: "Minimum depth required to call variant. Bases with\ndepth below this cutoff\
    \ will be marked as missing\n(default: 10)"
  type: long
  inputBinding:
    prefix: --min_depth
- id: in_af
  doc: "Minimum allele frequency to call variants (default:\n0.1)"
  type: double
  inputBinding:
    prefix: --af
- id: in_reporting_af
  doc: "Minimum allele frequency to use variants for\nprediction (default: 0.1)"
  type: double
  inputBinding:
    prefix: --reporting_af
- id: in_coverage_fraction_threshold
  doc: "Cutoff used to calculate fraction of region covered by\n<= this value (default:\
    \ 0)"
  type: long
  inputBinding:
    prefix: --coverage_fraction_threshold
- id: in_missing_cov_threshold
  doc: "Cutoff used to positions/codons in genes which are\nmissing (default: 10)"
  type: long
  inputBinding:
    prefix: --missing_cov_threshold
- id: in_threads
  doc: 'Threads to use (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_dir
  doc: 'Storage directory (default: .)'
  type: Directory
  inputBinding:
    prefix: --dir
- id: in_txt
  doc: 'Add text output (default: False)'
  type: boolean
  inputBinding:
    prefix: --txt
- id: in_csv
  doc: 'Add CSV output (default: False)'
  type: boolean
  inputBinding:
    prefix: --csv
- id: in_pdf
  doc: "Add PDF output. This requires pdflatex to be installed\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --pdf
- id: in_add_columns
  doc: "Add additional columns found in the mutation database\nto the text and pdf\
    \ results (default: None)"
  type: string
  inputBinding:
    prefix: --add_columns
- id: in_meta
  doc: "Add meta data from a CSV file to the results. The CSV\nfile must contain a\
    \ column labelled \"id\" with the same\nvalue as the prefix argument (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --meta
- id: in_verbose
  doc: 'Verbosity increases from 0 to 2 (default: 0)'
  type: string
  inputBinding:
    prefix: --verbose
- id: in_no_flag_stat
  doc: "Don't collect flagstats (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_flagstat
- id: in_no_delly
  doc: "Don't run delly (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_delly
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tb-profiler
- profile
