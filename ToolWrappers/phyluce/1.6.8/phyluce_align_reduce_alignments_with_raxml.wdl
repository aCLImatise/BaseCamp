version 1.0

task PhyluceAlignReduceAlignmentsWithRaxml {
  input {
    File? var_output
    Directory? alignments
    String? input_format
    Int? cores
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_align_reduce_alignments_with_raxml \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    var_output: "[--input-format {fasta,phylip,phylip-relaxed}]\\n[--cores CORES]\\n[--verbosity {INFO,WARN,CRITICAL}]\\n[--log-path LOG_PATH]"
    alignments: "Input folder of alignments"
    input_format: "The input alignment format"
    cores: "The number of compute cores to use"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
  }
}