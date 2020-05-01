#!/usr/bin/env cwl-runner

baseCommand:
- anvi-self-test
class: CommandLineTool
cwlVersion: v1.0
id: anvi-self-test
inputs:
- doc: "Suite of tests to execute. By default this program will execute a full suite\
    \ of example anvi'o commands to ensure your installation is ready to run all scenarios\
    \ anvi'o developers could think of. Alternatively you can choose a specific test\
    \ to run. Here is a full list of available options: mini, full, pangenomics, alons-classifier,\
    \ manual- interface."
  id: suite
  inputBinding:
    prefix: --suite
  type: string
