class: CommandLineTool
id: anvi_setup_scg_databases.cwl
inputs:
- id: num_threads
  doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  type: string
  inputBinding:
    prefix: --num-threads
- id: scgs_taxonomy_data_dir
  doc: The directory for SCGs data to be stored (or read from, depending on the context).
    If you leave it as is without specifying anything, anvi'o will set up everything
    in (or try to read things from) a pre- defined default directory. The advantage
    of using the default directory at the time of set up is that every user of anvi'o
    on a computer system will be using a single data directory, but then you may need
    to run the setup program with superuser privileges. If you don't have superuser
    privileges, then you can use this parameter to tell anvi'o the location you wish
    to use to setup your databases. If you are using a program (such as `anvi-run-scg-taxonomy`
    or `anvi-estimate- scg-taxonomy`) you will have to use this parameter to tell
    those programs where your data are.
  type: File
  inputBinding:
    prefix: --scgs-taxonomy-data-dir
- id: scgs_taxonomy_remote_database_url
  doc: "Anvi'o will always try to download the latest release, but if there is a problem\
    \ with the latest release, feel free to run setup using a different URL. Just\
    \ to note, anvi'o will expect to find the following files in the URL provided\
    \ here: 'VERSION', 'ar122_msa_individual_genes.tar.gz', 'ar122_taxonomy.tsv',\
    \ 'bac120_msa_individual_genes.tar.gz', and 'bac120_taxonomy.tsv'. If everything\
    \ fails, you can give this URL, which is supposed to work if teh server in which\
    \ these databases are maintained is still online: https://data.ace.uq.edu.au/public/gtdb/data/re\
    \ leases/release89/89.0/"
  type: string
  inputBinding:
    prefix: --scgs-taxonomy-remote-database-url
- id: reset
  doc: Remove all the previously stored files and start over. If something is feels
    wrong for some reason and if you believe re-downloading files and setting them
    up could address the issue, this is the flag that will tell anvi'o to act like
    a real computer scientist challenged with a computational problem.
  type: boolean
  inputBinding:
    prefix: --reset
- id: redo_databases
  doc: Remove existing databases and re-create them. This can be necessary when versions
    of programs change and databases they create and use become incompatible.
  type: boolean
  inputBinding:
    prefix: --redo-databases
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-setup-scg-databases
