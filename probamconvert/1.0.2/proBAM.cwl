class: CommandLineTool
id: proBAM.py.cwl
inputs:
- id: name
  doc: name of the project (will be determine how the output file is called
  type: string
  inputBinding:
    prefix: --name
- id: mismatches
  doc: '{0,1,2,3,4,5}, -M {0,1,2,3,4,5} numpber of mismatches allowed during mapping'
  type: boolean
  inputBinding:
    prefix: --mismatches
- id: database
  doc: Which database has to be used (currently only ENSEMBL is available
  type: string
  inputBinding:
    prefix: --database
- id: species
  doc: species to be used
  type: string
  inputBinding:
    prefix: --species
- id: file
  doc: location of the psm file to be processed
  type: string
  inputBinding:
    prefix: --file
- id: directory
  doc: location where to output files should be stored
  type: Directory
  inputBinding:
    prefix: --directory
- id: rm_duplicates
  doc: Whether duplicates should be removes
  type: string
  inputBinding:
    prefix: --rm_duplicates
- id: three_frame_translation
  doc: translate transcript sequences in 3 frames
  type: string
  inputBinding:
    prefix: --three_frame_translation
- id: decoy_annotation
  doc: annotation for DECOY PSM
  type: string
  inputBinding:
    prefix: --decoy_annotation
- id: sorting_order
  doc: sorting order of the SAM file
  type: string
  inputBinding:
    prefix: --sorting_order
- id: pre_picked_annotation
  doc: Which/How annotation should be identified
  type: string
  inputBinding:
    prefix: --pre_picked_annotation
- id: include_unmapped
  doc: Whether unmapped psm should be included in the output
  type: string
  inputBinding:
    prefix: --include_unmapped
- id: conversion_mode
  doc: which ouput format should be generated
  type: string
  inputBinding:
    prefix: --conversion_mode
- id: comments
  doc: add a comment to the file
  type: string
  inputBinding:
    prefix: --comments
- id: validated_only
  doc: only process validated PSMs (for mzIdentML
  type: string
  inputBinding:
    prefix: --validated_only
outputs: []
cwlVersion: v1.1
baseCommand:
- proBAM.py
