version 1.0

task Iugenmatchingfastqfiles {
  input {
    File? r_one
    File? r_two
    Int? identifier_code
    Boolean? identifier_tested
    String identifier_dot
  }
  command <<<
    iu_gen_matching_fastq_files \
      ~{identifier_dot} \
      ~{if defined(r_one) then ("--r1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("--r2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(identifier_code) then ("--identifier-code " +  '"' + identifier_code + '"') else ""} \
      ~{if (identifier_tested) then "--identifier-tested" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r_one: "R1"
    r_two: "R2"
    identifier_code: "CODE\\nLambda function to parse the header. Default:\\n'''lambda defline: defline.split()[0]'''."
    identifier_tested: "Use this flag to indicate that you tested your"
    identifier_dot: "--sequential          Your identifier code parses an integer value that can"
  }
  output {
    File out_stdout = stdout()
  }
}