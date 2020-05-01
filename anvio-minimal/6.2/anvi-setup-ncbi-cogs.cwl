#!/usr/bin/env cwl-runner

baseCommand:
- anvi-setup-ncbi-cogs
class: CommandLineTool
cwlVersion: v1.0
id: anvi-setup-ncbi-cogs
inputs:
- doc: The directory for COG data to be stored. If you leave it as is without specifying
    anything, the default destination for the data directory will be used to set things
    up. The advantage of it is that everyone will be using a single data directory,
    but then you may need superuser privileges to do it. Using this parameter you
    can choose the location of the data directory somewhere you like. However, when
    it is time to run COGs, you will need to remember that path and provide it to
    the program.
  id: cog_data_dir
  inputBinding:
    prefix: --cog-data-dir
  type: string
- doc: Remove all the previously stored files and start over. If something is feels
    wrong for some reason and if you believe re-downloading files and setting them
    up could address the issue, this is the flag that will tell anvi'o to act like
    a real computer scientist challenged with a computational problem.
  id: reset
  inputBinding:
    prefix: --reset
  type: boolean
- doc: Don't bother me with questions or warnings, just do it.
  id: just_do_it
  inputBinding:
    prefix: --just-do-it
  type: boolean
- doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: string
