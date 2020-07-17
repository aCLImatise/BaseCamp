version 1.0

task Cellprofiler {
  input {
    String? pipeline
    Boolean? run_headless
    Boolean? run
    String? output_directory
    String? image_directory
    String? first_image_set
    String? last_image_set
    String? group
    String? plugins_directory
    String? temporary_directory
    String? done_file
    Boolean? measurements
    String? print_groups
    String? get_batch_commands
    String? images_per_batch
    String? data_file
    String? file_list
    Boolean? do_not_write_schema
    Boolean? write_schema_and_exit
    String? omer_o_credentials
    String? log_level
    String? output_file
  }
  command <<<
    cellprofiler \
      ~{output_file} \
      ~{if defined(pipeline) then ("--pipeline " +  '"' + pipeline + '"') else ""} \
      ~{true="--run-headless" false="" run_headless} \
      ~{true="--run" false="" run} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(image_directory) then ("--image-directory " +  '"' + image_directory + '"') else ""} \
      ~{if defined(first_image_set) then ("--first-image-set " +  '"' + first_image_set + '"') else ""} \
      ~{if defined(last_image_set) then ("--last-image-set " +  '"' + last_image_set + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(plugins_directory) then ("--plugins-directory " +  '"' + plugins_directory + '"') else ""} \
      ~{if defined(temporary_directory) then ("--temporary-directory " +  '"' + temporary_directory + '"') else ""} \
      ~{if defined(done_file) then ("--done-file " +  '"' + done_file + '"') else ""} \
      ~{true="--measurements" false="" measurements} \
      ~{if defined(print_groups) then ("--print-groups " +  '"' + print_groups + '"') else ""} \
      ~{if defined(get_batch_commands) then ("--get-batch-commands " +  '"' + get_batch_commands + '"') else ""} \
      ~{if defined(images_per_batch) then ("--images-per-batch " +  '"' + images_per_batch + '"') else ""} \
      ~{if defined(data_file) then ("--data-file " +  '"' + data_file + '"') else ""} \
      ~{if defined(file_list) then ("--file-list " +  '"' + file_list + '"') else ""} \
      ~{true="--do-not-write-schema" false="" do_not_write_schema} \
      ~{true="--write-schema-and-exit" false="" write_schema_and_exit} \
      ~{if defined(omer_o_credentials) then ("--omero-credentials " +  '"' + omer_o_credentials + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    pipeline: "Load this pipeline file or project on startup. If specifying a pipeline file rather than a project, the -i flag is also needed unless the pipeline is saved with the file list."
    run_headless: "Run headless (without the GUI)"
    run: "Run the given pipeline on startup"
    output_directory: "Make this directory the default output folder"
    image_directory: "Make this directory the default input folder"
    first_image_set: "The one-based index of the first image set to process"
    last_image_set: "The one-based index of the last image set to process"
    group: "Restrict processing to one grouping in a grouped pipeline. For instance, \"-g ROW=H,COL=01\", will process only the group of image sets that match the keys."
    plugins_directory: "CellProfiler will look for plugin modules in this directory (headless-only)."
    temporary_directory: "Temporary directory. CellProfiler uses this for downloaded image files and for the measurements file, if not specified. The default is /tmp"
    done_file: "The path to the \"Done\" file, written by CellProfiler shortly before exiting"
    measurements: "Open the pipeline file specified by the -p switch and print the measurements made by that pipeline"
    print_groups: "Open the measurements file following the --print- groups switch and print the groups in its image sets. The measurements file should be generated using CreateBatchFiles. The output is a JSON-encoded data structure containing the group keys and values and the image sets in each group."
    get_batch_commands: "Open the measurements file following the --get-batch- commands switch and print one line to the console per group. The measurements file should be generated using CreateBatchFiles and the image sets should be grouped into the units to be run. Each line is a command to invoke CellProfiler. You can use this option to generate a shell script that will invoke CellProfiler on a cluster by substituting \"CellProfiler\" with your invocation command in the script's text, for instance: CellProfiler --get-batch-commands Batch_data.h5 | sed s/CellProfiler/farm_jobs.sh. Note that CellProfiler will always run in headless mode when --get-batch- commands is present and will exit after generating the batch commands without processing any pipeline."
    images_per_batch: "For pipelines that do not use image grouping this option specifies the number of images that should be processed in each batch if --get-batch-commands is used. Defaults to 1."
    data_file: "Specify the location of a .csv file for LoadData. If this switch is present, this file is used instead of the one specified in the LoadData module."
    file_list: "Specify a file list of one file or URL per line to be used to initially populate the Images module's file list."
    do_not_write_schema: "Do not execute the schema definition and other per- experiment SQL commands during initialization when running a pipeline in batch mode."
    write_schema_and_exit: "Create the experiment database schema and exit"
    omer_o_credentials: "Enter login credentials for OMERO. The credentials are entered as comma-separated key/value pairs with keys, \"host\" - the DNS host name for the OMERO server, \"port\" - the server's port # (typically 4064), \"user\" - the name of the connecting user, \"password\" - the connecting user's password, \"session-id\" - the session ID for an OMERO client session., \"config-file\" - the path to the OMERO credentials config file. A typical set of credentials might be: --omero-credentials host=demo.openmicroscopy.org,port=4064,session- id=atrvomvjcjfe7t01e8eu59amixmqqkfp"
    log_level: "Set the verbosity for logging messages: 10 or DEBUG for debugging, 20 or INFO for informational, 30 or WARNING for warning, 40 or ERROR for error, 50 or CRITICAL for critical, 50 or FATAL for fatal. Otherwise, the argument is interpreted as the file name of a log configuration file (see http://docs.python.org/library/logging.config.html for file format)"
    output_file: ""
  }
}