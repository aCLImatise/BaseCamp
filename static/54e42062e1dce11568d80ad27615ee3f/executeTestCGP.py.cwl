class: CommandLineTool
id: executeTestCGP.py.cwl
inputs:
- id: in_predict
  doc: to run original prediction.
  type: boolean?
  inputBinding:
    prefix: --predict
- id: in_prepare
  doc: to build a new test set from scratch.
  type: boolean?
  inputBinding:
    prefix: --prepare
- id: in_port
  doc: to build a new test set from scratch.
  type: boolean?
  inputBinding:
    prefix: --port
- id: in_run
  doc: to run prediction using minimal data set.
  type: boolean?
  inputBinding:
    prefix: --run
- id: in_eval
  doc: "to evaluate accuracy (respect to the last prediction\nobtained by launching\
    \ the script with --run option)."
  type: boolean?
  inputBinding:
    prefix: --eval
- id: in_chunks
  doc: "a list of one or more positive integers indicating the\nchunk/s to be processed\
    \ (refer to documentation for a\nlist of chunks over hg38.chr1)."
  type: string[]
  inputBinding:
    prefix: --chunks
- id: in_test
  doc: "to run a basic test to assess the correctness in the\ncreation of the minimal\
    \ data set."
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_rand
  doc: "to pick a random subset of non overlapping chunks\ncontaining at least 300\
    \ genes."
  type: long?
  inputBinding:
    prefix: --rand
- id: in_augustus_dir
  doc: path to comparative Augustus executable.
  type: File?
  inputBinding:
    prefix: --augustusDir
- id: in_eval_dir
  doc: path to Eval script.
  type: File?
  inputBinding:
    prefix: --evalDir
- id: in_working_dir
  doc: "path to data set used in testing (link).\n"
  type: File?
  inputBinding:
    prefix: --workingDir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- executeTestCGP.py
