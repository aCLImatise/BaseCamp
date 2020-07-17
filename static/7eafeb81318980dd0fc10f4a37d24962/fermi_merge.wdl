version 1.0

task FermiMerge {
  input {
    Boolean? force_overwrite_file
    File? output_file_name
    Int? number_threads_use
    String in_zero_dot_bwt
    String in_one_dot_bwt
  }
  command <<<
    fermi merge \
      ~{in_zero_dot_bwt} \
      ~{in_one_dot_bwt} \
      ~{true="-f" false="" force_overwrite_file} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""}
  >>>
  parameter_meta {
    force_overwrite_file: "force to overwrite the output file (effective with -o)"
    output_file_name: "output file name [null]"
    number_threads_use: "number of threads to use"
    in_zero_dot_bwt: ""
    in_one_dot_bwt: ""
  }
}