version 1.0

task MinCoverage {
  input {
    Int? name_target_contig
    File? input_sambam_file
  }
  command <<<
    min_coverage \
      ~{if defined(name_target_contig) then ("-t " +  '"' + name_target_contig + '"') else ""} \
      ~{if defined(input_sambam_file) then ("-i " +  '"' + input_sambam_file + '"') else ""}
  >>>
  parameter_meta {
    name_target_contig: "Name of target contig, e.g. HXB2:2253-2256"
    input_sambam_file: "Input SAM/BAM file"
  }
  output {
    File out_stdout = stdout()
  }
}