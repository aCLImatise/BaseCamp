version 1.0

task Cwltool {
  input {
    Boolean? record_container_id
    File? cid_file_dir
    File? cid_file_prefix
    Boolean? parallel
    String? outdir
    String? basedir
    String cwl_document
    String inputs_object
  }
  command <<<
    cwltool \
      ~{cwl_document} \
      ~{inputs_object} \
      ~{if (record_container_id) then "--record-container-id" else ""} \
      ~{if defined(cid_file_dir) then ("--cidfile-dir " +  '"' + cid_file_dir + '"') else ""} \
      ~{if defined(cid_file_prefix) then ("--cidfile-prefix " +  '"' + cid_file_prefix + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(basedir) then ("--basedir " +  '"' + basedir + '"') else ""}
  >>>
  parameter_meta {
    record_container_id: "If enabled, store the Docker container ID into a file.\\nSee --cidfile-dir to specify the directory."
    cid_file_dir: "Directory for storing the Docker container ID file.\\nThe default is the current directory"
    cid_file_prefix: "Specify a prefix to the container ID filename. Final\\nfile name will be followed by a timestamp. The default\\nis no prefix.\\n"
    parallel: ""
    outdir: ""
    basedir: ""
    cwl_document: "path or URL to a CWL Workflow, CommandLineTool, or\\nExpressionTool. If the `inputs_object` has a\\n`cwl:tool` field indicating the path or URL to the\\ncwl_document, then the `workflow` argument is\\noptional."
    inputs_object: "path or URL to a YAML or JSON formatted description of\\nthe required input values for the given\\n`cwl_document`."
  }
  output {
    File out_stdout = stdout()
  }
}