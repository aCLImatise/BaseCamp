#!/usr/bin/env cwl-runner

baseCommand:
- mulled-build-files
class: CommandLineTool
cwlVersion: v1.0
id: mulled-build-files
inputs:
- doc: Command (build-and-test, build, all)
  id: command
  inputBinding:
    position: 0
  type: string
- doc: Path to directory (or single file) of TSV files describing composite recipes.
  id: files
  inputBinding:
    position: 1
  type: File
