class: CommandLineTool
id: anvi_script_gen_scg_domain_classifier.cwl
inputs:
- id: genomes_dir
  doc: This should be a directory that contains a directory per domain for single-copy
    core gene collections a given version of anvi'o knows about. For instance, if
    there are collections for archaea, bacteria, and eukarya, then this directory
    should contain subdirectories with these names. Contents of which should be contigs
    databases that belong to those domains. These genomes will be used to generate
    the classifier.
  type: string
  inputBinding:
    prefix: --genomes-dir
- id: output
  doc: Output file name for the classifier.
  type: File
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-scg-domain-classifier
