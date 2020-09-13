version 1.0

task Transformcoverageprofile {
  input {
    String? specify_the_cov
    File? indicate_type_want
  }
  command <<<
    transform_coverage_profile \
      ~{if defined(specify_the_cov) then ("-c " +  '"' + specify_the_cov + '"') else ""} \
      ~{if defined(indicate_type_want) then ("-t " +  '"' + indicate_type_want + '"') else ""}
  >>>
  parameter_meta {
    specify_the_cov: "Specify the cov"
    indicate_type_want: "Indicate what type of data transformation you want in the final file (default is log):\\nscale --> Multiplication by 100 and log transform\\nlog --> Log transform\\nX5 --> Multiplication by 5\\nX10 --> Multiplication by 10\\nSQR --> Square root\\nWe recommend using a log transformation for initial testing. Other transformations can be useful in cases where there is an extremely low range distribution of coverages and when coverage values are low\\n"
  }
  output {
    File out_stdout = stdout()
  }
}