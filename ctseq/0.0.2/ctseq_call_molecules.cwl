class: CommandLineTool
id: ../../../ctseq_call_molecules.cwl
inputs:
- id: ref_dir
  doc: Full path to directory where you have already built your methylation reference
    files. If no '--refDir' is specified, ctseq will look in your current directory.
  type: string
  inputBinding:
    prefix: --refDir
- id: dir
  doc: Full path to directory where your .sam files are located. If no '--dir' is
    specified, ctseq will look in your current directory.
  type: string
  inputBinding:
    prefix: --dir
- id: consensus
  doc: consensus threshold to make consensus methylation call from all the reads with
    the same UMI (default=0.9)
  type: string
  inputBinding:
    prefix: --consensus
- id: processes
  doc: number of processes (default=1; default settings could take a long time to
    run)
  type: string
  inputBinding:
    prefix: --processes
- id: umi_threshold
  doc: UMIs with this edit distance will be collapsed together, default=0 (don't collapse)
  type: string
  inputBinding:
    prefix: --umiThreshold
- id: umi_collapse_alg
  doc: 'algorithm used to collapse UMIs, options: default=directional'
  type: string
  inputBinding:
    prefix: --umiCollapseAlg
outputs: []
cwlVersion: v1.1
baseCommand:
- ctseq
- call_molecules
