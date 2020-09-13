version 1.0

task PhyluceAssemblyExtractContigsToBarcodes {
  input {
    String? config
    Directory? contigs
    String? verbosity
    File? log_path
    String var_output
  }
  command <<<
    phyluce_assembly_extract_contigs_to_barcodes \
      ~{var_output} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    config: ""
    contigs: "The directory containing the assembled contigs."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    var_output: "[--verbosity {INFO,WARN,CRITICAL}]"
  }
  output {
    File out_stdout = stdout()
  }
}