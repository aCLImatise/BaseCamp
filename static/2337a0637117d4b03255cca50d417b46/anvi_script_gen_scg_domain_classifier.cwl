class: CommandLineTool
id: anvi_script_gen_scg_domain_classifier.cwl
inputs:
- id: in_genomes_dir
  doc: "This should be a directory that contains a directory\nper domain for single-copy\
    \ core gene collections a\ngiven version of anvi'o knows about. For instance,\
    \ if\nthere are collections for archaea, bacteria, and\neukarya, then this directory\
    \ should contain\nsubdirectories with these names. Contents of which\nshould be\
    \ contigs databases that belong to those\ndomains. These genomes will be used\
    \ to generate the\nclassifier. (default: None)"
  type: Directory?
  inputBinding:
    prefix: --genomes-dir
- id: in_output
  doc: "Output file name for the classifier. (default:\ndomain.classifier)"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name for the classifier. (default:\ndomain.classifier)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-scg-domain-classifier
