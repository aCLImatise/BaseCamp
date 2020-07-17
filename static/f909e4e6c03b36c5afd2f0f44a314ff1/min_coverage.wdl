version 1.0

task MinCoverage {
  input {
    String? name_hxb_
    String? input_sambam_file
  }
  command <<<
    min_coverage \
      ~{if defined(name_hxb_) then ("-t " +  '"' + name_hxb_ + '"') else ""} \
      ~{if defined(input_sambam_file) then ("-i " +  '"' + input_sambam_file + '"') else ""}
  >>>
  parameter_meta {
    name_hxb_: "Name of target contig, e.g. HXB2:2253-2256"
    input_sambam_file: "Input SAM/BAM file"
  }
}