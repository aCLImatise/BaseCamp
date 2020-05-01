#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-variability-to-vcf
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-variability-to-vcf
inputs:
- doc: Filepath to the SNV table. This is the output from the anvi-gen-variability-profile
    program with the nucleotide engine (which is the default engine).
  id: input
  inputBinding:
    prefix: --input
  type: File
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
