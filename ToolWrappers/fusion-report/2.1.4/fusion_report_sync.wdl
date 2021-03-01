version 1.0

task FusionReportSync {
  input {
    String? cosmic_usr
    String? cosmic_passwd
    String? cosmic_token
  }
  command <<<
    fusion_report sync \
      ~{if defined(cosmic_usr) then ("--cosmic_usr " +  '"' + cosmic_usr + '"') else ""} \
      ~{if defined(cosmic_passwd) then ("--cosmic_passwd " +  '"' + cosmic_passwd + '"') else ""} \
      ~{if defined(cosmic_token) then ("--cosmic_token " +  '"' + cosmic_token + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fusion-report:2.1.4--py_0"
  }
  parameter_meta {
    cosmic_usr: "COSMIC username"
    cosmic_passwd: "COSMIC password"
    cosmic_token: "COSMIC token\\n"
  }
  output {
    File out_stdout = stdout()
  }
}