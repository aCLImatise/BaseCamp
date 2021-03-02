version 1.0

task Bamtools241Revert {
  input {
    File? in
    File? out
    Boolean? force_compression
    Boolean? keep_duplicate
    Boolean? keep_qualities
    String bam_tools
    String revert
  }
  command <<<
    bamtools_2_4_1 revert \
      ~{bam_tools} \
      ~{revert} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (force_compression) then "-forceCompression" else ""} \
      ~{if (keep_duplicate) then "-keepDuplicate" else ""} \
      ~{if (keep_qualities) then "-keepQualities" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input BAM file [stdin]"
    out: "the output BAM file [stdout]"
    force_compression: "if results are sent to stdout\\n(like when piping to another tool),\\ndefault behavior is to leave output\\nuncompressed. Use this flag to override\\nand force compression"
    keep_duplicate: "keep duplicates marked"
    keep_qualities: "keep base qualities (do not\\nreplace with OQ contents)"
    bam_tools: ""
    revert: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}