class: CommandLineTool
id: anvi_setup_ncbi_cogs.cwl
inputs:
- id: in_cog_data_dir
  doc: "The directory for COG data to be stored. If you leave\nit as is without specifying\
    \ anything, the default\ndestination for the data directory will be used to set\n\
    things up. The advantage of it is that everyone will\nbe using a single data directory,\
    \ but then you may\nneed superuser privileges to do it. Using this\nparameter\
    \ you can choose the location of the data\ndirectory somewhere you like. However,\
    \ when it is time\nto run COGs, you will need to remember that path and\nprovide\
    \ it to the program."
  type: File?
  inputBinding:
    prefix: --cog-data-dir
- id: in_reset
  doc: "Remove all the previously stored files and start over.\nIf something is feels\
    \ wrong for some reason and if you\nbelieve re-downloading files and setting them\
    \ up could\naddress the issue, this is the flag that will tell\nanvi'o to act\
    \ like a real computer scientist\nchallenged with a computational problem."
  type: boolean?
  inputBinding:
    prefix: --reset
- id: in_just_do_it
  doc: Don't bother me with questions or warnings, just do
  type: boolean?
  inputBinding:
    prefix: --just-do-it
- id: in_if
  doc: are clusterizing your runs, and asking for
  type: string?
  inputBinding:
    prefix: --if
- id: in_it_dot
  doc: -T NUM_THREADS, --num-threads NUM_THREADS
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
- anvi-setup-ncbi-cogs
