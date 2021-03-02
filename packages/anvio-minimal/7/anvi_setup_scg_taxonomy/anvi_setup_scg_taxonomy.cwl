class: CommandLineTool
id: anvi_setup_scg_taxonomy.cwl
inputs:
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
- id: in_scgs_taxonomy_data_dir
  doc: "The directory for SCGs data to be stored (or read\nfrom, depending on the\
    \ context). If you leave it as is\nwithout specifying anything, anvi'o will set\
    \ up\neverything in (or try to read things from) a pre-\ndefined default directory.\
    \ The advantage of using the\ndefault directory at the time of set up is that\
    \ every\nuser of anvi'o on a computer system will be using a\nsingle data directory,\
    \ but then you may need to run\nthe setup program with superuser privileges. If\
    \ you\ndon't have superuser privileges, then you can use this\nparameter to tell\
    \ anvi'o the location you wish to use\nto setup your databases. If you are using\
    \ a program\n(such as `anvi-run-scg-taxonomy` or `anvi-estimate-\nscg-taxonomy`)\
    \ you will have to use this parameter to\ntell those programs where your data\
    \ are. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --scgs-taxonomy-data-dir
- id: in_gt_db_release
  doc: "If you are particularly intersted an earlier release\nanvi'o knows about,\
    \ you can set it here Otherwise\nanvi'o will always use the latest release it\
    \ knows\nabout. (default: None)"
  type: long?
  inputBinding:
    prefix: --gtdb-release
- id: in_reset
  doc: "Remove all the previously stored files and start over.\nIf something is feels\
    \ wrong for some reason and if you\nbelieve re-downloading files and setting them\
    \ up could\naddress the issue, this is the flag that will tell\nanvi'o to act\
    \ like a real computer scientist\nchallenged with a computational problem. (default:\n\
    False)"
  type: boolean?
  inputBinding:
    prefix: --reset
- id: in_redo_databases
  doc: "Remove existing databases and re-create them. This can\nbe necessary when\
    \ versions of programs change and\ndatabases they create and use become incompatible.\n\
    (default: False)"
  type: boolean?
  inputBinding:
    prefix: --redo-databases
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-setup-scg-taxonomy
