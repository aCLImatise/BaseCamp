version 1.0

task BasenjiFetchVcfpy {
  input {
    Boolean? print_full_tables
    Float? ld
    String? population_code
    Int sad_h_five_path
    String vcf_file
  }
  command <<<
    basenji_fetch_vcf_py \
      ~{sad_h_five_path} \
      ~{vcf_file} \
      ~{if (print_full_tables) then "-f" else ""} \
      ~{if defined(ld) then ("--ld " +  '"' + ld + '"') else ""} \
      ~{if defined(population_code) then ("-p " +  '"' + population_code + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    print_full_tables: "Print full tables describing all linked variants [Default:\\nFalse]"
    ld: "LD threshold to consider variant [Default: 0.5]"
    population_code: "Population code"
    sad_h_five_path: ""
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}