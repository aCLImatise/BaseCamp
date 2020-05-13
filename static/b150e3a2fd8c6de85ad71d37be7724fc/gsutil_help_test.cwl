class: CommandLineTool
id: gsutil_help_test.cwl
inputs:
- id: b
  doc: Run tests against multi-regional US buckets. By default, tests run against
    regional buckets in us-central1.
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: Output coverage information.
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: Exit on first sequential test failure.
  type: boolean
  inputBinding:
    prefix: -f
- id: l
  doc: List available tests.
  type: boolean
  inputBinding:
    prefix: -l
- id: p
  doc: Run at most N tests in parallel. The default value is 5.
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: Run tests against S3 instead of GS.
  type: boolean
  inputBinding:
    prefix: -s
- id: u
  doc: Only run unit tests.
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- help
- test
