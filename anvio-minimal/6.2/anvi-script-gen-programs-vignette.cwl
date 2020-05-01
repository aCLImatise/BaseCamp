#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-gen-programs-vignette
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-gen-programs-vignette
inputs:
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: Comma-spearated list of program names to focus Mostly for debugging purposes.
  id: program_names_to_focus
  inputBinding:
    prefix: --program-names-to-focus
  type: string
