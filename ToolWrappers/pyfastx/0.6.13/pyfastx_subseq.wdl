version 1.0

task PyfastxSubseq {
  input {
    File? region_file
    File? bed_file
    File? out_file
    String fast_x
    String region
  }
  command <<<
    pyfastx subseq \
      ~{fast_x} \
      ~{region} \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(bed_file) then ("--bed-file " +  '"' + bed_file + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    region_file: "tab-delimited file, one region per line, both start\\nand end position are 1-based"
    bed_file: "tab-delimited BED file, 0-based start position and\\n1-based end position"
    out_file: "output file, default: output to stdout\\n"
    fast_x: "input fasta file, gzip support"
    region: "format is chr:start-end, start and end position is\\n1-based, multiple regions were separated by space"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}