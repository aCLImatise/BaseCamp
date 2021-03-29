version 1.0

task Iugenconfigs {
  input {
    Int? r_one_prefix
    Int? r_two_prefix
    String? e_mail
    Directory? output_dir
  }
  command <<<
    iu_gen_configs \
      ~{if defined(r_one_prefix) then ("--r1-prefix " +  '"' + r_one_prefix + '"') else ""} \
      ~{if defined(r_two_prefix) then ("--r2-prefix " +  '"' + r_two_prefix + '"') else ""} \
      ~{if defined(e_mail) then ("--e-mail " +  '"' + e_mail + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-utils:2.11--py_0"
  }
  parameter_meta {
    r_one_prefix: "Prefix for Read 1 to be put in every config file."
    r_two_prefix: "Prefix for Read 2."
    e_mail: "E-mail address (currently is not used for anything)"
    output_dir: "Directory for output storage. INI files will also be\\ngenerated in this directory.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}