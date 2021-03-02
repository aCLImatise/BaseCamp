version 1.0

task CnvkitpyImportthetaTumorCns {
  input {
    Directory? d
    String? ploidy
    String cnv_kit_do_tpy
    String import_theta
  }
  command <<<
    cnvkit_py import_theta tumor_cns \
      ~{cnv_kit_do_tpy} \
      ~{import_theta} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    d: ""
    ploidy: ""
    cnv_kit_do_tpy: ""
    import_theta: ""
  }
  output {
    File out_stdout = stdout()
  }
}