#!/usr/bin/env cwl-runner

baseCommand:
- anvi-setup-pdb-database
class: CommandLineTool
cwlVersion: v1.0
id: anvi-setup-pdb-database
inputs:
- doc: The path for the PDB database to be stored. If you leave it as is without specifying
    anything, anvi'o will set up everything in a pre-defined default directory. The
    advantage of using the default directory at the time of set up is that every user
    of anvi'o on a computer system will be using a single data directory, but then
    you may need to run the setup program with superuser privileges. If you don't
    have superuser privileges, then you can use this parameter to tell anvi'o the
    location you wish to use to setup your database.
  id: pdb_database_path
  inputBinding:
    prefix: --pdb-database-path
  type: File
- doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: string
- doc: Use this flag if you would like to update your current database.
  id: update
  inputBinding:
    prefix: --update
  type: boolean
- doc: By default, MODELLER's search DB is updated when this program is ran so that
    if MODELLER finds a protein, its structure is guaranteed to be in this database.
    If you don't want to touch the MODELLER database, use this flag.
  id: skip_modeller_update
  inputBinding:
    prefix: --skip-modeller-update
  type: boolean
- doc: Remove all the previously stored files and start over. If something is feels
    wrong for some reason and if you believe re-downloading files and setting them
    up could address the issue, this is the flag that will tell anvi'o to act like
    a real computer scientist challenged with a computational problem.
  id: reset
  inputBinding:
    prefix: --reset
  type: boolean
