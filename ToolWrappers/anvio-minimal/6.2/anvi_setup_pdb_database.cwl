class: CommandLineTool
id: anvi_setup_pdb_database.cwl
inputs:
- id: in_pdb_database_path
  doc: "The path for the PDB database to be stored. If you\nleave it as is without\
    \ specifying anything, anvi'o\nwill set up everything in a pre-defined default\n\
    directory. The advantage of using the default\ndirectory at the time of set up\
    \ is that every user of\nanvi'o on a computer system will be using a single\n\
    data directory, but then you may need to run the setup\nprogram with superuser\
    \ privileges. If you don't have\nsuperuser privileges, then you can use this parameter\n\
    to tell anvi'o the location you wish to use to setup\nyour database."
  type: File?
  inputBinding:
    prefix: --pdb-database-path
- id: in_num_threads
  doc: "Maximum number of threads to use for multithreading\nwhenever possible. Very\
    \ conservatively, the default is\n1. It is a good idea to not exceed the number\
    \ of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if\
    \ you are running your commands on a SGE\n--if you are clusterizing your runs,\
    \ and asking for\nmultiple threads to use, you may deplete your\nresources very\
    \ fast."
  type: long?
  inputBinding:
    prefix: --num-threads
- id: in_update
  doc: Use this flag if you would like to update your current
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_reset
  doc: "Remove all the previously stored files and start over.\nIf something is feels\
    \ wrong for some reason and if you\nbelieve re-downloading files and setting them\
    \ up could\naddress the issue, this is the flag that will tell\nanvi'o to act\
    \ like a real computer scientist\nchallenged with a computational problem.\n"
  type: boolean?
  inputBinding:
    prefix: --reset
- id: in_database_dot
  doc: --skip-modeller-update
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-setup-pdb-database
