class: CommandLineTool
id: anvi_setup_pfams.cwl
inputs:
- id: in_pfam_data_dir
  doc: "The directory for Pfam data to be stored. If you leave\nit as is without specifying\
    \ anything, the default\ndestination for the data directory will be used to set\n\
    things up. The advantage of it is that everyone will\nbe using a single data directory,\
    \ but then you may\nneed superuser privileges to do it. Using this\nparameter\
    \ you can choose the location of the data\ndirectory somewhere you like. However,\
    \ when it is time\nto run Pfam, you will need to remember that path and\nprovide\
    \ it to the program. (default: None)"
  type: File?
  inputBinding:
    prefix: --pfam-data-dir
- id: in_reset
  doc: "This program by default attempts to use previously\ndownloaded files in your\
    \ Pfam data directory if there\nare any. If something is wrong for some reason\
    \ you can\nuse this to tell anvi'o to remove everything, and\nstart over. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --reset
- id: in_pfam_version
  doc: "By default, the most current version available will be\ndownloaded. If you\
    \ have specific tastes for a\ndifferent version, you can provide it here. For\n\
    example, `31.0`. Here are all possible versions:\nftp://ftp.ebi.ac.uk/pub/databases/Pfam/releases/\n\
    (default: None)"
  type: double?
  inputBinding:
    prefix: --pfam-version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-setup-pfams
