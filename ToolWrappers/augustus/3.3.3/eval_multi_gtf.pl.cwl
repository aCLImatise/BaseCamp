class: CommandLineTool
id: eval_multi_gtf.pl.cwl
inputs:
- id: in_eval_path
  doc: path to eval package (will try to guess from availability of evaluate_gtf.pl,
    but if that does not work because you don't have this script in your path, set
    with this command line option).
  type: boolean?
  inputBinding:
    prefix: --EVAL_PATH
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- eval_multi_gtf.pl
