version 1.0

task CnvkitpyImportseg {
  input {
    Int? chromosomes
    File? prefix
    Boolean? from_log_one_zero
    Directory? output_dir
    String samples_dot
  }
  command <<<
    cnvkit_py import_seg \
      ~{samples_dot} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (from_log_one_zero) then "--from-log10" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chromosomes: "Mapping of chromosome indexes to names. Syntax:\\n\\\"from1:to1,from2:to2\\\". Or use \\\"human\\\" for the preset:\\n\\\"23:X,24:Y,25:M\\\"."
    prefix: "Prefix to add to chromosome names (e.g 'chr' to rename\\n'8' in the SEG file to 'chr8' in the output)."
    from_log_one_zero: "Convert base-10 logarithm values in the input to\\nbase-2 logs."
    output_dir: "Output directory name.\\n"
    samples_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
    Directory out_output_dir = "${in_output_dir}"
  }
}