version 1.0

task Cellprofiler {
  input {
    File? pipeline
    Boolean? run_headless
    Boolean? run
    Directory? output_directory
    Directory? image_directory
    String? first_image_set
    String? last_image_set
    Int? group
    Directory? plugins_directory
    Directory? temporary_directory
    File? done_file
    Boolean? measurements
    File? print_groups
    File? get_batch_commands
    Int? images_per_batch
    File? data_file
    File? file_list
    Boolean? do_not_write_schema
    Boolean? write_schema_and_exit
    File? omer_o_credentials
    File? log_level
    File? output_file
  }
  command <<<
    cellprofiler \
      ~{output_file} \
      ~{if defined(pipeline) then ("--pipeline " +  '"' + pipeline + '"') else ""} \
      ~{if (run_headless) then "--run-headless" else ""} \
      ~{if (run) then "--run" else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(image_directory) then ("--image-directory " +  '"' + image_directory + '"') else ""} \
      ~{if defined(first_image_set) then ("--first-image-set " +  '"' + first_image_set + '"') else ""} \
      ~{if defined(last_image_set) then ("--last-image-set " +  '"' + last_image_set + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(plugins_directory) then ("--plugins-directory " +  '"' + plugins_directory + '"') else ""} \
      ~{if defined(temporary_directory) then ("--temporary-directory " +  '"' + temporary_directory + '"') else ""} \
      ~{if defined(done_file) then ("--done-file " +  '"' + done_file + '"') else ""} \
      ~{if (measurements) then "--measurements" else ""} \
      ~{if defined(print_groups) then ("--print-groups " +  '"' + print_groups + '"') else ""} \
      ~{if defined(get_batch_commands) then ("--get-batch-commands " +  '"' + get_batch_commands + '"') else ""} \
      ~{if defined(images_per_batch) then ("--images-per-batch " +  '"' + images_per_batch + '"') else ""} \
      ~{if defined(data_file) then ("--data-file " +  '"' + data_file + '"') else ""} \
      ~{if defined(file_list) then ("--file-list " +  '"' + file_list + '"') else ""} \
      ~{if (do_not_write_schema) then "--do-not-write-schema" else ""} \
      ~{if (write_schema_and_exit) then "--write-schema-and-exit" else ""} \
      ~{if defined(omer_o_credentials) then ("--omero-credentials " +  '"' + omer_o_credentials + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    pipeline: "Load this pipeline file or project on startup. If\\nspecifying a pipeline file rather than a project, the\\n-i flag is also needed unless the pipeline is saved\\nwith the file list."
    run_headless: "Run headless (without the GUI)"
    run: "Run the given pipeline on startup"
    output_directory: "Make this directory the default output folder"
    image_directory: "Make this directory the default input folder"
    first_image_set: "The one-based index of the first image set to process"
    last_image_set: "The one-based index of the last image set to process"
    group: "Restrict processing to one grouping in a grouped\\npipeline. For instance, \\\"-g ROW=H,COL=01\\\", will\\nprocess only the group of image sets that match the\\nkeys."
    plugins_directory: "CellProfiler will look for plugin modules in this\\ndirectory (headless-only)."
    temporary_directory: "Temporary directory. CellProfiler uses this for\\ndownloaded image files and for the measurements file,\\nif not specified. The default is /tmp"
    done_file: "The path to the \\\"Done\\\" file, written by CellProfiler\\nshortly before exiting"
    measurements: "Open the pipeline file specified by the -p switch and\\nprint the measurements made by that pipeline"
    print_groups: "Open the measurements file following the --print-\\ngroups switch and print the groups in its image sets.\\nThe measurements file should be generated using\\nCreateBatchFiles. The output is a JSON-encoded data\\nstructure containing the group keys and values and the\\nimage sets in each group."
    get_batch_commands: "Open the measurements file following the --get-batch-\\ncommands switch and print one line to the console per\\ngroup. The measurements file should be generated using\\nCreateBatchFiles and the image sets should be grouped\\ninto the units to be run. Each line is a command to\\ninvoke CellProfiler. You can use this option to\\ngenerate a shell script that will invoke CellProfiler\\non a cluster by substituting \\\"CellProfiler\\\" with your\\ninvocation command in the script's text, for instance:\\nCellProfiler --get-batch-commands Batch_data.h5 | sed\\ns/CellProfiler/farm_jobs.sh. Note that CellProfiler\\nwill always run in headless mode when --get-batch-\\ncommands is present and will exit after generating the\\nbatch commands without processing any pipeline."
    images_per_batch: "For pipelines that do not use image grouping this\\noption specifies the number of images that should be\\nprocessed in each batch if --get-batch-commands is\\nused. Defaults to 1."
    data_file: "Specify the location of a .csv file for LoadData. If\\nthis switch is present, this file is used instead of\\nthe one specified in the LoadData module."
    file_list: "Specify a file list of one file or URL per line to be\\nused to initially populate the Images module's file\\nlist."
    do_not_write_schema: "Do not execute the schema definition and other per-\\nexperiment SQL commands during initialization when\\nrunning a pipeline in batch mode."
    write_schema_and_exit: "Create the experiment database schema and exit"
    omer_o_credentials: "Enter login credentials for OMERO. The credentials are\\nentered as comma-separated key/value pairs with keys,\\n\\\"host\\\" - the DNS host name for the OMERO server,\\n\\\"port\\\" - the server's port # (typically 4064), \\\"user\\\"\\n- the name of the connecting user, \\\"password\\\" - the\\nconnecting user's password, \\\"session-id\\\" - the session\\nID for an OMERO client session., \\\"config-file\\\" - the\\npath to the OMERO credentials config file. A typical\\nset of credentials might be: --omero-credentials\\nhost=demo.openmicroscopy.org,port=4064,session-\\nid=atrvomvjcjfe7t01e8eu59amixmqqkfp"
    log_level: "Set the verbosity for logging messages: 10 or DEBUG\\nfor debugging, 20 or INFO for informational, 30 or\\nWARNING for warning, 40 or ERROR for error, 50 or\\nCRITICAL for critical, 50 or FATAL for fatal.\\nOtherwise, the argument is interpreted as the file\\nname of a log configuration file (see\\nhttp://docs.python.org/library/logging.config.html for\\nfile format)\\n"
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_print_groups = "${in_print_groups}"
    File out_output_file = "${in_output_file}"
  }
}