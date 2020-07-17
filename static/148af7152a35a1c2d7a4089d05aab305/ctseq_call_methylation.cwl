class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ctseq_call_methylation.cwl
inputs:
- id: ref_dir
  doc: Full path to directory where you have already built your methylation reference
    files. If no '--refDir' is specified, ctseq will look in your current directory.
  type: string
  inputBinding:
    prefix: --refDir
- id: dir
  doc: Full path to directory where your '*allMolecules.txt' files are located. If
    no '--dir' is specified, ctseq will look in your current directory.
  type: string
  inputBinding:
    prefix: --dir
- id: name_run
  doc: number of reads needed to be counted as a unique molecule (required)
  type: string
  inputBinding:
    prefix: --nameRun
- id: processes
  doc: number of processes (default=1)
  type: string
  inputBinding:
    prefix: --processes
- id: cisc_g
  doc: cis-CG threshold to determine if a molecule is methylated (default=0.75)
  type: string
  inputBinding:
    prefix: --cisCG
- id: molecule_threshold
  doc: number of reads needed to be counted as a unique molecule (default=5)
  type: string
  inputBinding:
    prefix: --moleculeThreshold
outputs: []
cwlVersion: v1.1
baseCommand:
- ctseq
- call_methylation
