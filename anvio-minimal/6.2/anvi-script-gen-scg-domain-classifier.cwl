#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-gen-scg-domain-classifier
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-gen-scg-domain-classifier
inputs:
- doc: This should be a directory that contains a directory per domain for single-copy
    core gene collections a given version of anvi'o knows about. For instance, if
    there are collections for archaea, bacteria, and eukarya, then this directory
    should contain subdirectories with these names. Contents of which should be contigs
    databases that belong to those domains. These genomes will be used to generate
    the classifier.
  id: genomes_dir
  inputBinding:
    prefix: --genomes-dir
  type: string
- doc: Output file name for the classifier.
  id: output
  inputBinding:
    prefix: --output
  type: File
