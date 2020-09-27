class: CommandLineTool
id: ctseq_call_molecules.cwl
inputs:
- id: in_ref_dir
  doc: "Full path to directory where you have already built\nyour methylation reference\
    \ files. If no '--refDir' is\nspecified, ctseq will look in your current directory."
  type: File
  inputBinding:
    prefix: --refDir
- id: in_dir
  doc: "Full path to directory where your .sam files are\nlocated. If no '--dir' is\
    \ specified, ctseq will look\nin your current directory."
  type: File
  inputBinding:
    prefix: --dir
- id: in_consensus
  doc: "consensus threshold to make consensus methylation call\nfrom all the reads\
    \ with the same UMI (default=0.9)"
  type: double
  inputBinding:
    prefix: --consensus
- id: in_processes
  doc: "number of processes (default=1; default settings could\ntake a long time to\
    \ run)"
  type: long
  inputBinding:
    prefix: --processes
- id: in_umi_threshold
  doc: "UMIs with this edit distance will be collapsed\ntogether, default=0 (don't\
    \ collapse)"
  type: long
  inputBinding:
    prefix: --umiThreshold
- id: in_umi_collapse_alg
  doc: "algorithm used to collapse UMIs, options:\ndefault=directional\n"
  type: string
  inputBinding:
    prefix: --umiCollapseAlg
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ctseq
- call_molecules
