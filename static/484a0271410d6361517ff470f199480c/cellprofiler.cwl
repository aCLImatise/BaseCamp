class: CommandLineTool
id: cellprofiler.cwl
inputs:
- id: pipeline
  doc: Load this pipeline file or project on startup. If specifying a pipeline file
    rather than a project, the -i flag is also needed unless the pipeline is saved
    with the file list.
  type: string
  inputBinding:
    prefix: --pipeline
- id: run_headless
  doc: Run headless (without the GUI)
  type: boolean
  inputBinding:
    prefix: --run-headless
- id: run
  doc: Run the given pipeline on startup
  type: boolean
  inputBinding:
    prefix: --run
- id: output_directory
  doc: Make this directory the default output folder
  type: string
  inputBinding:
    prefix: --output-directory
- id: image_directory
  doc: Make this directory the default input folder
  type: string
  inputBinding:
    prefix: --image-directory
- id: first_image_set
  doc: The one-based index of the first image set to process
  type: string
  inputBinding:
    prefix: --first-image-set
- id: last_image_set
  doc: The one-based index of the last image set to process
  type: string
  inputBinding:
    prefix: --last-image-set
- id: group
  doc: Restrict processing to one grouping in a grouped pipeline. For instance, "-g
    ROW=H,COL=01", will process only the group of image sets that match the keys.
  type: string
  inputBinding:
    prefix: --group
- id: plugins_directory
  doc: CellProfiler will look for plugin modules in this directory (headless-only).
  type: string
  inputBinding:
    prefix: --plugins-directory
- id: temporary_directory
  doc: Temporary directory. CellProfiler uses this for downloaded image files and
    for the measurements file, if not specified. The default is /tmp
  type: string
  inputBinding:
    prefix: --temporary-directory
- id: done_file
  doc: The path to the "Done" file, written by CellProfiler shortly before exiting
  type: string
  inputBinding:
    prefix: --done-file
- id: measurements
  doc: Open the pipeline file specified by the -p switch and print the measurements
    made by that pipeline
  type: boolean
  inputBinding:
    prefix: --measurements
- id: print_groups
  doc: Open the measurements file following the --print- groups switch and print the
    groups in its image sets. The measurements file should be generated using CreateBatchFiles.
    The output is a JSON-encoded data structure containing the group keys and values
    and the image sets in each group.
  type: string
  inputBinding:
    prefix: --print-groups
- id: get_batch_commands
  doc: "Open the measurements file following the --get-batch- commands switch and\
    \ print one line to the console per group. The measurements file should be generated\
    \ using CreateBatchFiles and the image sets should be grouped into the units to\
    \ be run. Each line is a command to invoke CellProfiler. You can use this option\
    \ to generate a shell script that will invoke CellProfiler on a cluster by substituting\
    \ \"CellProfiler\" with your invocation command in the script's text, for instance:\
    \ CellProfiler --get-batch-commands Batch_data.h5 | sed s/CellProfiler/farm_jobs.sh.\
    \ Note that CellProfiler will always run in headless mode when --get-batch- commands\
    \ is present and will exit after generating the batch commands without processing\
    \ any pipeline."
  type: string
  inputBinding:
    prefix: --get-batch-commands
- id: images_per_batch
  doc: For pipelines that do not use image grouping this option specifies the number
    of images that should be processed in each batch if --get-batch-commands is used.
    Defaults to 1.
  type: string
  inputBinding:
    prefix: --images-per-batch
- id: data_file
  doc: Specify the location of a .csv file for LoadData. If this switch is present,
    this file is used instead of the one specified in the LoadData module.
  type: string
  inputBinding:
    prefix: --data-file
- id: file_list
  doc: Specify a file list of one file or URL per line to be used to initially populate
    the Images module's file list.
  type: string
  inputBinding:
    prefix: --file-list
- id: do_not_write_schema
  doc: Do not execute the schema definition and other per- experiment SQL commands
    during initialization when running a pipeline in batch mode.
  type: boolean
  inputBinding:
    prefix: --do-not-write-schema
- id: write_schema_and_exit
  doc: Create the experiment database schema and exit
  type: boolean
  inputBinding:
    prefix: --write-schema-and-exit
- id: omer_o_credentials
  doc: "Enter login credentials for OMERO. The credentials are entered as comma-separated\
    \ key/value pairs with keys, \"host\" - the DNS host name for the OMERO server,\
    \ \"port\" - the server's port # (typically 4064), \"user\" - the name of the\
    \ connecting user, \"password\" - the connecting user's password, \"session-id\"\
    \ - the session ID for an OMERO client session., \"config-file\" - the path to\
    \ the OMERO credentials config file. A typical set of credentials might be: --omero-credentials\
    \ host=demo.openmicroscopy.org,port=4064,session- id=atrvomvjcjfe7t01e8eu59amixmqqkfp"
  type: string
  inputBinding:
    prefix: --omero-credentials
- id: log_level
  doc: 'Set the verbosity for logging messages: 10 or DEBUG for debugging, 20 or INFO
    for informational, 30 or WARNING for warning, 40 or ERROR for error, 50 or CRITICAL
    for critical, 50 or FATAL for fatal. Otherwise, the argument is interpreted as
    the file name of a log configuration file (see http://docs.python.org/library/logging.config.html
    for file format)'
  type: string
  inputBinding:
    prefix: --log-level
outputs: []
cwlVersion: v1.1
baseCommand:
- cellprofiler
