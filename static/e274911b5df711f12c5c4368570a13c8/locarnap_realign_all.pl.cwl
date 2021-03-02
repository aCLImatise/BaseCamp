class: CommandLineTool
id: locarnap_realign_all.pl.cwl
inputs:
- id: in_man
  doc: Full documentation
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_test
  doc: Test only. Jobs are not run or submitted to SGE!
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_rev_compl
  doc: Realign reverse complement
  type: boolean?
  inputBinding:
    prefix: --revcompl
- id: in_run_locally
  doc: Run the realignment on the local machine (without the use of SGE).
  type: boolean?
  inputBinding:
    prefix: --run-locally
- id: in_threads
  doc: Use <k> threads for multicore support.
  type: string?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- locarnap-realign-all.pl
