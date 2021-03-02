class: CommandLineTool
id: sam_compare_w_feature.py.cwl
inputs:
- id: in_length
  doc: Read length
  type: long?
  inputBinding:
    prefix: --length
- id: in_fast_q
  doc: Source FastQ data file name
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_sama
  doc: First SAM file (A)
  type: File?
  inputBinding:
    prefix: --sama
- id: in_samb
  doc: Second SAM file (B)
  type: File?
  inputBinding:
    prefix: --samb
- id: in_feature
  doc: Fusion file name, TSV or BED
  type: File?
  inputBinding:
    prefix: --feature
- id: in_counts
  doc: "Output file name for the counts - CSV file. Defaults\nto counts_username_date_time_rand.csv.\
    \ To output to\nconsole, set to -o stdout"
  type: File?
  inputBinding:
    prefix: --counts
- id: in_totals
  doc: "Output file name for the totals - text file. Defaults\nto totals_username_date_time_randint.txt.\
    \ To output to\nconsole, set to -t stdout"
  type: File?
  inputBinding:
    prefix: --totals
- id: in_no_fq_ids
  doc: "Do not check SAM reads QNAME against the fastq\nsequence ids. Saves time if\
    \ already known to be good.\nMust still set -q op ion."
  type: boolean?
  inputBinding:
    prefix: --nofqids
- id: in_log
  doc: "Log file name. Defaults to\nsamcompare_username_date_time_rand.log. To output\
    \ to\nconsole, set to -g stdout. There is normally no stdout\nunless specifically\
    \ requested via options."
  type: File?
  inputBinding:
    prefix: --log
- id: in_debug
  doc: "Debugging mode (verbose). Includes elapsed time\ndisplay for performance tracking."
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_counts
  doc: "Output file name for the counts - CSV file. Defaults\nto counts_username_date_time_rand.csv.\
    \ To output to\nconsole, set to -o stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_counts)
- id: out_totals
  doc: "Output file name for the totals - text file. Defaults\nto totals_username_date_time_randint.txt.\
    \ To output to\nconsole, set to -t stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_totals)
- id: out_log
  doc: "Log file name. Defaults to\nsamcompare_username_date_time_rand.log. To output\
    \ to\nconsole, set to -g stdout. There is normally no stdout\nunless specifically\
    \ requested via options."
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- sam_compare_w_feature.py
