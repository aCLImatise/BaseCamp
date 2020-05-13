class: CommandLineTool
id: roProfile.py.cwl
inputs:
- id: roar_y
  doc: Path to directory containing all output files from Roary.
  type: string
  inputBinding:
    prefix: --roary
- id: gff_dir
  doc: Path to directory containing all gff files used in the Roary analysis.
  type: string
  inputBinding:
    prefix: --gffdir
- id: core
  doc: Generate profile file for the core-genome only, with genes present in all isolates.
  type: boolean
  inputBinding:
    prefix: --core
- id: transpose
  doc: Transpose the gene presence absence rtab file from roary to be used as profile.
    It will also generate a clean gene_presence_absence file, without the removed
    loci, and a new pan-genome frequency plot for this file.
  type: boolean
  inputBinding:
    prefix: --transpose
- id: th
  doc: '[THRESHOLD], --threshold [THRESHOLD] Threshold for the allele size (default=0.2).'
  type: boolean
  inputBinding:
    prefix: -th
- id: gene_file
  doc: Obtain a roary's gene presence and absence csv file without the removed loci.
  type: boolean
  inputBinding:
    prefix: --genefile
outputs: []
cwlVersion: v1.1
baseCommand:
- roProfile.py
