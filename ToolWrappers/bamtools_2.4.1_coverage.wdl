version 1.0

task Bamtools241Coverage {
  input {
    File? in
    File? out
    String bam_tools
    String coverage
  }
  command <<<
    bamtools_2_4_1 coverage \
      ~{bam_tools} \
      ~{coverage} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    out: "the output file [stdout]"
    bam_tools: ""
    coverage: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}