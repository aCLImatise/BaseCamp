#!/usr/bin/env cwl-runner

baseCommand:
- rm
class: CommandLineTool
cwlVersion: v1.0
id: rm
inputs:
- doc: ignore nonexistent files and arguments, never prompt
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: prompt before every removal
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: prompt once before removing more than three files, or when removing recursively;
    less intrusive than -i, while still giving protection against most mistakes
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: '[=WHEN]  prompt according to WHEN: never, once (-I), or always (-i); without
    WHEN, prompt always'
  id: interactive
  inputBinding:
    prefix: --interactive
  type: boolean
- doc: when removing a hierarchy recursively, skip any directory that is on a file
    system different from that of the corresponding command line argument
  id: one_file_system
  inputBinding:
    prefix: --one-file-system
  type: boolean
- doc: do not treat '/' specially
  id: no_preserve_root
  inputBinding:
    prefix: --no-preserve-root
  type: boolean
- doc: do not remove '/' (default)
  id: preserve_root
  inputBinding:
    prefix: --preserve-root
  type: boolean
- doc: remove directories and their contents recursively
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: remove empty directories
  id: dir
  inputBinding:
    prefix: --dir
  type: boolean
- doc: explain what is being done
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
