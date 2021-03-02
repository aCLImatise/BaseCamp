class: CommandLineTool
id: .perl_atlas_modules_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-atlas-modules:0.1.6--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- .perl-atlas-modules-post-link.sh
