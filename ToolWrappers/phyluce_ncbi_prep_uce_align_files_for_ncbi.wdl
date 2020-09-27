version 1.0

task PhyluceNcbiPrepUceAlignFilesForNcbi {
  input {
    File? var_output
    Directory? alignments
    String? input_format
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_ncbi_prep_uce_align_files_for_ncbi \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    var_output: "[--input-format {fasta,nexus,phylip,phylip-relaxed,clustal,emboss,stockholm}]\\n[--verbosity {INFO,WARN,CRITICAL}]\\n[--log-path LOG_PATH]"
    alignments: "The directory containing alignments"
    input_format: "The input alignment format"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
  }
}