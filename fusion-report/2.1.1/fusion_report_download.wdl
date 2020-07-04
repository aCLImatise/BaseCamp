version 1.0

task FusionReportDownload {
  input {
    String? cosmic_usr
    String? cosmic_passwd
    String? cosmic_token
    String output_directory
  }
  command <<<
    fusion_report download \
      ~{output_directory} \
      ~{if defined(cosmic_usr) then ("--cosmic_usr " +  '"' + cosmic_usr + '"') else ""} \
      ~{if defined(cosmic_passwd) then ("--cosmic_passwd " +  '"' + cosmic_passwd + '"') else ""} \
      ~{if defined(cosmic_token) then ("--cosmic_token " +  '"' + cosmic_token + '"') else ""}
  >>>
  parameter_meta {
    cosmic_usr: "COSMIC username"
    cosmic_passwd: "COSMIC password"
    cosmic_token: "COSMIC token"
    output_directory: "Output directory"
  }
}