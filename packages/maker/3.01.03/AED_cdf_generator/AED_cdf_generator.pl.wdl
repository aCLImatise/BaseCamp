version 1.0

task AEDCdfGeneratorpl {
  input {
    String? b
    Boolean? more_options
    Boolean? options
  }
  command <<<
    AED_cdf_generator_pl \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
  parameter_meta {
    b: ""
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}