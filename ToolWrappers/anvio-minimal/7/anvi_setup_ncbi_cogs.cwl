class: CommandLineTool
id: anvi_setup_ncbi_cogs.cwl
inputs:
- id: in_cog_version
  doc: "COG version. The default is the latest version, which\nis COG20, meaning that\
    \ anvi'o will use the NCBI's 2020\nrelease of COGs to setup the database and run\
    \ it on\ncontigs databases. There is also an older version of\nCOGs from 2014.\
    \ If you would like anvi'o to work with\nthat one, please use COG14 as a parameter.\
    \ On a single\ncomputer you can have both, and on a single contigs\ndatabase you\
    \ can run both. Cool and confusing. The\nanvi'o way. (default: None)"
  type: long?
  inputBinding:
    prefix: --cog-version
- id: in_cog_data_dir
  doc: "The directory for COG data to be stored. If you leave\nit as is without specifying\
    \ anything, the default\ndestination for the data directory will be used to set\n\
    things up. The advantage of it is that everyone will\nbe using a single data directory,\
    \ but then you may\nneed superuser privileges to do it. Using this\nparameter\
    \ you can choose the location of the data\ndirectory somewhere you like. However,\
    \ when it is time\nto run COGs, you will need to remember that path and\nprovide\
    \ it to the program. (default: None)"
  type: File?
  inputBinding:
    prefix: --cog-data-dir
- id: in_reset
  doc: "Remove all the previously stored files and start over.\nIf something is feels\
    \ wrong for some reason and if you\nbelieve re-downloading files and setting them\
    \ up could\naddress the issue, this is the flag that will tell\nanvi'o to act\
    \ like a real computer scientist\nchallenged with a computational problem. (default:\n\
    False)"
  type: boolean?
  inputBinding:
    prefix: --reset
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --just-do-it
- id: in_num_threads
  doc: "Maximum number of threads to use for multithreading\nwhenever possible. Very\
    \ conservatively, the default is\n1. It is a good idea to not exceed the number\
    \ of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if\
    \ you are running your commands on a SGE\n--if you are clusterizing your runs,\
    \ and asking for\nmultiple threads to use, you may deplete your\nresources very\
    \ fast. (default: 1)"
  type: long?
  inputBinding:
    prefix: --num-threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-setup-ncbi-cogs
