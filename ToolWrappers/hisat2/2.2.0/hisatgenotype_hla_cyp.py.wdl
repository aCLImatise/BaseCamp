version 1.0

task HisatgenotypeHlaCyppy {
  input {
    File? base
    String? hla_list
  }
  command <<<
    hisatgenotype_hla_cyp_py \
      ~{if defined(base) then ("--base " +  '"' + base + '"') else ""} \
      ~{if defined(hla_list) then ("--hla-list " +  '"' + hla_list + '"') else ""}
  >>>
  parameter_meta {
    base: "base filename for backbone HLA sequence, HLA variants,"
    hla_list: "A comma-separated list of HLA genes (default:"
  }
  output {
    File out_stdout = stdout()
  }
}