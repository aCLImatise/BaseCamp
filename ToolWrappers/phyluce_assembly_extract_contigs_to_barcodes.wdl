version 1.0

task PhyluceAssemblyExtractContigsToBarcodes {
  input {
    File? config
    Directory? contigs
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_assembly_extract_contigs_to_barcodes \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    config: "OUTPUT\\n[--verbosity {INFO,WARN,CRITICAL}]\\n[--log-path LOG_PATH]"
    contigs: "The directory containing the assembled contigs."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
    File out_config = "${in_config}"
  }
}