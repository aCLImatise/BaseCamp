version 1.0

task MinCoverage {
  input {
    Int? name_target_
    File? input_sambam_file
  }
  command <<<
    min_coverage \
      ~{if defined(name_target_) then ("-t " +  '"' + name_target_ + '"') else ""} \
      ~{if defined(input_sambam_file) then ("-i " +  '"' + input_sambam_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0"
  }
  parameter_meta {
    name_target_: "Name of target contig, e.g. HXB2:2253-2256"
    input_sambam_file: "Input SAM/BAM file"
  }
  output {
    File out_stdout = stdout()
  }
}