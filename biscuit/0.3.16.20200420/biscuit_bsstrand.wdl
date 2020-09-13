version 1.0

task BiscuitBsstrand {
  input {
    Boolean? region_optional_
    Boolean? append_count_tag
    Boolean? correct_bsstrand_output
    String optional_output_bam
  }
  command <<<
    biscuit bsstrand \
      ~{optional_output_bam} \
      ~{if (region_optional_) then "-g" else ""} \
      ~{if (append_count_tag) then "-y" else ""} \
      ~{if (correct_bsstrand_output) then "-c" else ""}
  >>>
  parameter_meta {
    region_optional_: "region (optional, chrX:123-456 if missing, process the whole bam)."
    append_count_tag: "append count of C>T (YC tag) and G>A (YG tag) in output bam."
    correct_bsstrand_output: "correct bsstrand in the output bam, YD tag will be replaced if existent and created if not."
    optional_output_bam: "optional output bam, work with -y or -c"
  }
  output {
    File out_stdout = stdout()
  }
}