class: CommandLineTool
id: cellprofiler.cwl
inputs:
- id: in_pipeline
  doc: "Load this pipeline file or project on startup. If\nspecifying a pipeline file\
    \ rather than a project, the\n-i flag is also needed unless the pipeline is saved\n\
    with the file list."
  type: File
  inputBinding:
    prefix: --pipeline
- id: in_run_headless
  doc: Run headless (without the GUI)
  type: boolean
  inputBinding:
    prefix: --run-headless
- id: in_run
  doc: Run the given pipeline on startup
  type: boolean
  inputBinding:
    prefix: --run
- id: in_output_directory
  doc: Make this directory the default output folder
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: in_image_directory
  doc: Make this directory the default input folder
  type: Directory
  inputBinding:
    prefix: --image-directory
- id: in_first_image_set
  doc: The one-based index of the first image set to process
  type: string
  inputBinding:
    prefix: --first-image-set
- id: in_last_image_set
  doc: The one-based index of the last image set to process
  type: string
  inputBinding:
    prefix: --last-image-set
- id: in_group
  doc: "Restrict processing to one grouping in a grouped\npipeline. For instance,\
    \ \"-g ROW=H,COL=01\", will\nprocess only the group of image sets that match the\n\
    keys."
  type: long
  inputBinding:
    prefix: --group
- id: in_plugins_directory
  doc: "CellProfiler will look for plugin modules in this\ndirectory (headless-only)."
  type: Directory
  inputBinding:
    prefix: --plugins-directory
- id: in_temporary_directory
  doc: "Temporary directory. CellProfiler uses this for\ndownloaded image files and\
    \ for the measurements file,\nif not specified. The default is /tmp"
  type: Directory
  inputBinding:
    prefix: --temporary-directory
- id: in_done_file
  doc: "The path to the \"Done\" file, written by CellProfiler\nshortly before exiting"
  type: File
  inputBinding:
    prefix: --done-file
- id: in_measurements
  doc: "Open the pipeline file specified by the -p switch and\nprint the measurements\
    \ made by that pipeline"
  type: boolean
  inputBinding:
    prefix: --measurements
- id: in_print_groups
  doc: "Open the measurements file following the --print-\ngroups switch and print\
    \ the groups in its image sets.\nThe measurements file should be generated using\n\
    CreateBatchFiles. The output is a JSON-encoded data\nstructure containing the\
    \ group keys and values and the\nimage sets in each group."
  type: File
  inputBinding:
    prefix: --print-groups
- id: in_get_batch_commands
  doc: "Open the measurements file following the --get-batch-\ncommands switch and\
    \ print one line to the console per\ngroup. The measurements file should be generated\
    \ using\nCreateBatchFiles and the image sets should be grouped\ninto the units\
    \ to be run. Each line is a command to\ninvoke CellProfiler. You can use this\
    \ option to\ngenerate a shell script that will invoke CellProfiler\non a cluster\
    \ by substituting \"CellProfiler\" with your\ninvocation command in the script's\
    \ text, for instance:\nCellProfiler --get-batch-commands Batch_data.h5 | sed\n\
    s/CellProfiler/farm_jobs.sh. Note that CellProfiler\nwill always run in headless\
    \ mode when --get-batch-\ncommands is present and will exit after generating the\n\
    batch commands without processing any pipeline."
  type: File
  inputBinding:
    prefix: --get-batch-commands
- id: in_images_per_batch
  doc: "For pipelines that do not use image grouping this\noption specifies the number\
    \ of images that should be\nprocessed in each batch if --get-batch-commands is\n\
    used. Defaults to 1."
  type: long
  inputBinding:
    prefix: --images-per-batch
- id: in_data_file
  doc: "Specify the location of a .csv file for LoadData. If\nthis switch is present,\
    \ this file is used instead of\nthe one specified in the LoadData module."
  type: File
  inputBinding:
    prefix: --data-file
- id: in_file_list
  doc: "Specify a file list of one file or URL per line to be\nused to initially populate\
    \ the Images module's file\nlist."
  type: File
  inputBinding:
    prefix: --file-list
- id: in_do_not_write_schema
  doc: "Do not execute the schema definition and other per-\nexperiment SQL commands\
    \ during initialization when\nrunning a pipeline in batch mode."
  type: boolean
  inputBinding:
    prefix: --do-not-write-schema
- id: in_write_schema_and_exit
  doc: Create the experiment database schema and exit
  type: boolean
  inputBinding:
    prefix: --write-schema-and-exit
- id: in_omer_o_credentials
  doc: "Enter login credentials for OMERO. The credentials are\nentered as comma-separated\
    \ key/value pairs with keys,\n\"host\" - the DNS host name for the OMERO server,\n\
    \"port\" - the server's port # (typically 4064), \"user\"\n- the name of the connecting\
    \ user, \"password\" - the\nconnecting user's password, \"session-id\" - the session\n\
    ID for an OMERO client session., \"config-file\" - the\npath to the OMERO credentials\
    \ config file. A typical\nset of credentials might be: --omero-credentials\nhost=demo.openmicroscopy.org,port=4064,session-\n\
    id=atrvomvjcjfe7t01e8eu59amixmqqkfp"
  type: File
  inputBinding:
    prefix: --omero-credentials
- id: in_log_level
  doc: "Set the verbosity for logging messages: 10 or DEBUG\nfor debugging, 20 or\
    \ INFO for informational, 30 or\nWARNING for warning, 40 or ERROR for error, 50\
    \ or\nCRITICAL for critical, 50 or FATAL for fatal.\nOtherwise, the argument is\
    \ interpreted as the file\nname of a log configuration file (see\nhttp://docs.python.org/library/logging.config.html\
    \ for\nfile format)\n"
  type: File
  inputBinding:
    prefix: --log-level
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Make this directory the default output folder
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_print_groups
  doc: "Open the measurements file following the --print-\ngroups switch and print\
    \ the groups in its image sets.\nThe measurements file should be generated using\n\
    CreateBatchFiles. The output is a JSON-encoded data\nstructure containing the\
    \ group keys and values and the\nimage sets in each group."
  type: File
  outputBinding:
    glob: $(inputs.in_print_groups)
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- cellprofiler
