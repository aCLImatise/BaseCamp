#!/usr/bin/env cwl-runner

baseCommand:
- proBAM.py
class: CommandLineTool
cwlVersion: v1.0
id: probam.py
inputs:
- doc: name of the project (will be determine how the output file is called
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: '{0,1,2,3,4,5}, -M {0,1,2,3,4,5} numpber of mismatches allowed during mapping'
  id: mismatches
  inputBinding:
    prefix: --mismatches
  type: boolean
- doc: Which database has to be used (currently only ENSEMBL is available
  id: database
  inputBinding:
    prefix: --database
  type: string
- doc: species to be used
  id: species
  inputBinding:
    prefix: --species
  type: string
- doc: location of the psm file to be processed
  id: file
  inputBinding:
    prefix: --file
  type: string
- doc: location where to output files should be stored
  id: directory
  inputBinding:
    prefix: --directory
  type: Directory
- doc: Whether duplicates should be removes
  id: rm_duplicates
  inputBinding:
    prefix: --rm_duplicates
  type: string
- doc: translate transcript sequences in 3 frames
  id: three_frame_translation
  inputBinding:
    prefix: --three_frame_translation
  type: string
- doc: annotation for DECOY PSM
  id: decoy_annotation
  inputBinding:
    prefix: --decoy_annotation
  type: string
- doc: sorting order of the SAM file
  id: sorting_order
  inputBinding:
    prefix: --sorting_order
  type: string
- doc: Which/How annotation should be identified
  id: pre_picked_annotation
  inputBinding:
    prefix: --pre_picked_annotation
  type: string
- doc: Whether unmapped psm should be included in the output
  id: include_unmapped
  inputBinding:
    prefix: --include_unmapped
  type: string
- doc: which ouput format should be generated
  id: conversion_mode
  inputBinding:
    prefix: --conversion_mode
  type: string
- doc: add a comment to the file
  id: comments
  inputBinding:
    prefix: --comments
  type: string
- doc: only process validated PSMs (for mzIdentML
  id: validated_only
  inputBinding:
    prefix: --validated_only
  type: string
