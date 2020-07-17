class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gsutil_test.cwl
inputs:
- id: run_tests_multiregional
  doc: Run tests against multi-regional US buckets. By default, tests run against
    regional buckets in us-central1.
  type: boolean
  inputBinding:
    prefix: -b
- id: output_coverage_information
  doc: Output coverage information.
  type: boolean
  inputBinding:
    prefix: -c
- id: exit_first_sequential
  doc: Exit on first sequential test failure.
  type: boolean
  inputBinding:
    prefix: -f
- id: list_available_tests
  doc: List available tests.
  type: boolean
  inputBinding:
    prefix: -l
- id: run_most_n
  doc: Run at most N tests in parallel. The default value is 5.
  type: string
  inputBinding:
    prefix: -p
- id: run_tests_s
  doc: Run tests against S3 instead of GS.
  type: boolean
  inputBinding:
    prefix: -s
- id: only_run_unit
  doc: Only run unit tests.
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- test
