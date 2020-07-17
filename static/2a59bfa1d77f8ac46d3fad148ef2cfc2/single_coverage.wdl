version 1.0

task SingleCoverage {
  input {
    String? t
    String maf_file
  }
  command <<<
    single_coverage \
      ~{maf_file} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    maf_file: ""
  }
}