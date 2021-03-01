version 1.0

task SplashUtilconversionrateBam {
  input {
    Boolean? rev
    String? region
    File? r
    String splash
    String util_dot_conversion_rate
  }
  command <<<
    splash util_conversionrate bam \
      ~{splash} \
      ~{util_dot_conversion_rate} \
      ~{if (rev) then "-rev" else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rev: ""
    region: ""
    r: ""
    splash: ""
    util_dot_conversion_rate: ""
  }
  output {
    File out_stdout = stdout()
  }
}