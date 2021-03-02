class: CommandLineTool
id: anvi_setup_interacdome.cwl
inputs:
- id: in_interac_dome_data_dir
  doc: "The path for the interacdome data to be stored. If you\nleave it as is without\
    \ specifying anything, anvi'o\nwill set up everything in a pre-defined default\n\
    directory. The advantage of using the default\ndirectory at the time of set up\
    \ is that every user of\nanvi'o on a computer system will be using a single\n\
    data directory, but then you may need to run the setup\nprogram with superuser\
    \ privileges. If you don't have\nsuperuser privileges, then you can use this parameter\n\
    to tell anvi'o the location you wish to use to setup\nyour data. (default: None)"
  type: File?
  inputBinding:
    prefix: --interacdome-data-dir
- id: in_reset
  doc: "Remove all the previously stored files and start over.\nIf something is feels\
    \ wrong for some reason and if you\nbelieve re-downloading files and setting them\
    \ up could\naddress the issue, this is the flag that will tell\nanvi'o to act\
    \ like a real computer scientist\nchallenged with a computational problem. (default:\n\
    False)"
  type: boolean?
  inputBinding:
    prefix: --reset
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-setup-interacdome
