version 1.0

task BamtoolsSort {
  input {
    String? in
    String? out
    Boolean? by_name
    String? max_number_alignments
    String? mem
    String? sort_options
  }
  command <<<
    bamtools sort \
      ~{sort_options} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-byname" false="" by_name} \
      ~{if defined(max_number_alignments) then ("-n " +  '"' + max_number_alignments + '"') else ""} \
      ~{if defined(mem) then ("-mem " +  '"' + mem + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    out: "the output BAM file [stdout]"
    by_name: "sort by alignment name"
    max_number_alignments: "max number of alignments per tempfile [500000]"
    mem: "max memory to use [1024]"
    sort_options: ""
  }
}