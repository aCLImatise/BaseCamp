class: CommandLineTool
id: anvi_setup_pdb_database.cwl
inputs:
- id: pdb_database_path
  doc: The path for the PDB database to be stored. If you leave it as is without specifying
    anything, anvi'o will set up everything in a pre-defined default directory. The
    advantage of using the default directory at the time of set up is that every user
    of anvi'o on a computer system will be using a single data directory, but then
    you may need to run the setup program with superuser privileges. If you don't
    have superuser privileges, then you can use this parameter to tell anvi'o the
    location you wish to use to setup your database.
  type: File
  inputBinding:
    prefix: --pdb-database-path
- id: num_threads
  doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  type: string
  inputBinding:
    prefix: --num-threads
- id: update
  doc: Use this flag if you would like to update your current database.
  type: boolean
  inputBinding:
    prefix: --update
- id: skip_modeller_update
  doc: By default, MODELLER's search DB is updated when this program is ran so that
    if MODELLER finds a protein, its structure is guaranteed to be in this database.
    If you don't want to touch the MODELLER database, use this flag.
  type: boolean
  inputBinding:
    prefix: --skip-modeller-update
- id: reset
  doc: Remove all the previously stored files and start over. If something is feels
    wrong for some reason and if you believe re-downloading files and setting them
    up could address the issue, this is the flag that will tell anvi'o to act like
    a real computer scientist challenged with a computational problem.
  type: boolean
  inputBinding:
    prefix: --reset
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-setup-pdb-database
