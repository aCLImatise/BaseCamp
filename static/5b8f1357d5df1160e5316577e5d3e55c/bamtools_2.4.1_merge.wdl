version 1.0

task Bamtools241Merge {
  input {
    File? in
    File? list
    File? out
    Boolean? force_compression
    String? region
    String bam_tools
    String merge
  }
  command <<<
    bamtools_2_4_1 merge \
      ~{bam_tools} \
      ~{merge} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (force_compression) then "-forceCompression" else ""} \
      ~{if defined(region) then ("-region " +  '"' + region + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input BAM file(s)"
    list: "the input BAM file list, one\\nline per file"
    out: "the output BAM file"
    force_compression: "if results are sent to stdout\\n(like when piping to another tool),\\ndefault behavior is to leave output\\nuncompressed. Use this flag to override\\nand force compression"
    region: "genomic region. See README for\\nmore details"
    bam_tools: ""
    merge: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}