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
    \ it to the program."
  type: File?
  inputBinding:
    prefix: --pfam-data-dir
- id: in_reset
  doc: "This program by default attempts to use previously\ndownloaded files in your\
    \ Pfam data directory if there\nare any. If something is wrong for some reason\
    \ you can\nuse this to tell anvi'o to remove everything, and\nstart over.\n"
  type: boolean?
  inputBinding:
    prefix: --reset
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-setup-pfams
