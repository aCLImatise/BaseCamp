class: CommandLineTool
id: biotdg.cwl
inputs:
- id: in_reference
  doc: Reference genome for the sample.
  type: string?
  inputBinding:
    prefix: --reference
- id: in_vcf
  doc: VCF file with mutations.
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_ploidy_table
  doc: "Tab-delimited file with two columns specifying the\nchromosome name and its\
    \ ploidy. By default all\nchromosomes have a ploidy of 2."
  type: File?
  inputBinding:
    prefix: --ploidy-table
- id: in_sample_name
  doc: "Name of the sample to generate. The sample must be in\nthe VCF file."
  type: File?
  inputBinding:
    prefix: --sample-name
- id: in_random_seed
  doc: 'Random seed for dwgsim (default: 1).'
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_read_length
  doc: Read length to be used by dwgsim.
  type: long?
  inputBinding:
    prefix: --read-length
- id: in_coverage
  doc: "Average coverage for the generated reads. NOTE: This\nis multiplied by the\
    \ ploidy of the chromosome."
  type: string?
  inputBinding:
    prefix: --coverage
- id: in_read_one_error_rate
  doc: "Same as -e flag in dwgsim. per base/color/flow error\nrate of the first read."
  type: long?
  inputBinding:
    prefix: --read1-error-rate
- id: in_read_two_error_rate
  doc: "Same as -E flag in dwgsim. per base/color/flow error\nrate of the second read."
  type: long?
  inputBinding:
    prefix: --read2-error-rate
- id: in_maximum_n_number
  doc: Maximum number of Ns allowed in a given read.
  type: long?
  inputBinding:
    prefix: --maximum-n-number
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biotdg
