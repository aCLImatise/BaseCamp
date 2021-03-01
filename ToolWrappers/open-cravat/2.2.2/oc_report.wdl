version 1.0

task OcReport {
  input {
    String? report_types
    File? path_filter_file
    String? name_filter_stored
    File? path_save_file
    File? path_conf_file
    String? module_name
    Boolean? no_gene_level_on_variant_level
    String? confs
    Array[String] input_files
    Boolean? separate_sample
    Directory? directory_output_files
    Boolean? do_not_change_status
    Boolean? silent
    Boolean? system_option
    Boolean? module_option
    Boolean? concise_report
  }
  command <<<
    oc report \
      ~{if defined(report_types) then ("-t " +  '"' + report_types + '"') else ""} \
      ~{if defined(path_filter_file) then ("-f " +  '"' + path_filter_file + '"') else ""} \
      ~{if defined(name_filter_stored) then ("-F " +  '"' + name_filter_stored + '"') else ""} \
      ~{if defined(path_save_file) then ("-s " +  '"' + path_save_file + '"') else ""} \
      ~{if defined(path_conf_file) then ("-c " +  '"' + path_conf_file + '"') else ""} \
      ~{if defined(module_name) then ("--module-name " +  '"' + module_name + '"') else ""} \
      ~{if (no_gene_level_on_variant_level) then "--nogenelevelonvariantlevel" else ""} \
      ~{if defined(confs) then ("--confs " +  '"' + confs + '"') else ""} \
      ~{if defined(input_files) then ("--inputfiles " +  '"' + input_files + '"') else ""} \
      ~{if (separate_sample) then "--separatesample" else ""} \
      ~{if defined(directory_output_files) then ("-d " +  '"' + directory_output_files + '"') else ""} \
      ~{if (do_not_change_status) then "--do-not-change-status" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (system_option) then "--system-option" else ""} \
      ~{if (module_option) then "--module-option" else ""} \
      ~{if (concise_report) then "--concise-report" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    report_types: "[{text,excel} ...]\\nreport types"
    path_filter_file: "Path to filter file"
    name_filter_stored: "Name of filter (stored in aggregator output)"
    path_save_file: "Path to save file"
    path_conf_file: "path to a conf file"
    module_name: "report module name"
    no_gene_level_on_variant_level: "Use this option to prevent gene level result from\\nbeing added to variant level result."
    confs: "Configuration string"
    input_files: "Original input file path"
    separate_sample: "Write each variant-sample pair on a separate line"
    directory_output_files: "directory for output files"
    do_not_change_status: "Job status in status.json will not be changed"
    silent: "Suppress output to STDOUT"
    system_option: "[SYSTEM_OPTION ...]\\nSystem option in key=value syntax. For example,\\n--system-option modules_dir=/home/user/open-\\ncravat/modules"
    module_option: "[MODULE_OPTION ...]\\nModule-specific option in module_name.key=value\\nsyntax. For example, --module-option\\nvcfreporter.type=separate"
    concise_report: "Generate concise report with default columns defined\\nby annotation modules"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_output_files = "${in_directory_output_files}"
  }
}