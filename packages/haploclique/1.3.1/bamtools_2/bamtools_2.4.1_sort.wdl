version 1.0

task Bamtools241Sort {
  input {
    File? in
    File? out
    Boolean? by_name
    Int? max_number_alignments
    Int? mem
    String bam_tools
    String sort
    String? sort_options
  }
  command <<<
    bamtools_2_4_1 sort \
      ~{bam_tools} \
      ~{sort} \
      ~{sort_options} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (by_name) then "-byname" else ""} \
      ~{if defined(max_number_alignments) then ("-n " +  '"' + max_number_alignments + '"') else ""} \
      ~{if defined(mem) then ("-mem " +  '"' + mem + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input BAM file [stdin]"
    out: "the output BAM file [stdout]"
    by_name: "sort by alignment name"
    max_number_alignments: "max number of alignments per\\ntempfile [500000]"
    mem: "max memory to use [1024]"
    bam_tools: ""
    sort: ""
    sort_options: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}