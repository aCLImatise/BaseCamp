class: CommandLineTool
id: gsutil_test.cwl
inputs:
- id: in_run_tests_uscentral
  doc: "Run tests against multi-regional US buckets. By default,\ntests run against\
    \ regional buckets in us-central1."
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_output_coverage_information
  doc: Output coverage information.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_exit_first_sequential
  doc: Exit on first sequential test failure.
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_list_available_tests
  doc: List available tests.
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_run_most_n
  doc: Run at most N tests in parallel. The default value is 5.
  type: long?
  inputBinding:
    prefix: -p
- id: in_run_tests_s
  doc: Run tests against S3 instead of GS.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_only_run_unit
  doc: Only run unit tests.
  type: boolean?
  inputBinding:
    prefix: -u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gsutil
- test
