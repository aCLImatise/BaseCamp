class: CommandLineTool
id: alleyoop_positional_tracks.cwl
inputs:
- id: bam
  doc: Bam file(s)
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: Output directory for bedGraph files.
  type: string
  inputBinding:
    prefix: --outputDir
- id: snp_directory
  doc: Directory containing SNP files.
  type: string
  inputBinding:
    prefix: --snp-directory
- id: vcf
  doc: Skip SNP step and provide custom variant file.
  type: string
  inputBinding:
    prefix: --vcf
- id: reference
  doc: Reference fasta file
  type: string
  inputBinding:
    prefix: --reference
- id: conversion_threshold
  doc: 'Number of T>C conversions required to count read as T>C read (default: 1)'
  type: string
  inputBinding:
    prefix: --conversion-threshold
- id: coverage_cut_off
  doc: 'Minimum coverage required to report nucleotide- conversion rate (default:
    1). Anything less than 1 will be set to 1 to avoid division by zero.'
  type: string
  inputBinding:
    prefix: --coverage-cutoff
- id: min_base_qual
  doc: 'Min base quality for T -> C conversions (default: 27)'
  type: long
  inputBinding:
    prefix: --min-base-qual
- id: threads
  doc: 'Thread number (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- alleyoop
- positional-tracks
