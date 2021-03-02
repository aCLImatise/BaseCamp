version 1.0

task Grmpyvcfmergepy {
  input {
    File? input_vcf_file
    String? gr_mpy
    File? output_file_name
    File? log_file
    Boolean? quiet
    Boolean? debug
    String stderr
  }
  command <<<
    grmpy_vcf_merge_py \
      ~{stderr} \
      ~{if defined(input_vcf_file) then ("--input " +  '"' + input_vcf_file + '"') else ""} \
      ~{if defined(gr_mpy) then ("--grmpy " +  '"' + gr_mpy + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_vcf_file: "Input VCF file of variants."
    gr_mpy: "JSON output from multigrmpy.py / grmpy"
    output_file_name: "Output file name."
    log_file: "Write logging information into file rather than to"
    quiet: "Set logging level to output errors only."
    debug: "Log debug level events."
    stderr: "--verbose             Raise logging level from warning to info."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}