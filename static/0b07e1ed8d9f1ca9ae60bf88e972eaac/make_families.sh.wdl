version 1.0

task Makefamiliessh {
  input {
    Boolean? length_barcode_portion
    Boolean? length_invariant_ligation
    Boolean? memory_usage_parameter
    Boolean? temporary_file_directory
  }
  command <<<
    make_families_sh \
      ~{if (length_barcode_portion) then "-t" else ""} \
      ~{if (length_invariant_ligation) then "-i" else ""} \
      ~{if (memory_usage_parameter) then "-S" else ""} \
      ~{if (temporary_file_directory) then "-T" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0"
  }
  parameter_meta {
    length_barcode_portion: ": The length of the barcode portion of each read. Default: 12"
    length_invariant_ligation: ": The length of the invariant (ligation) portion of each read. Default: 5"
    memory_usage_parameter: ": The memory usage parameter to pass directly to the sort command's -S option.\\nCan be an absolute figure like 5G or a percentage. See man sort for details."
    temporary_file_directory: ": The temporary file directory that sort should use.\\nWill be passed directly to the sort command's -T option.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}