version 1.0

task BiscuitBsstrand {
  input {
    Boolean? region_optional_chrx
    Boolean? append_count_ct
    Boolean? correct_bsstrand_output
    String optional_output_bam
  }
  command <<<
    biscuit bsstrand \
      ~{optional_output_bam} \
      ~{true="-g" false="" region_optional_chrx} \
      ~{true="-y" false="" append_count_ct} \
      ~{true="-c" false="" correct_bsstrand_output}
  >>>
  parameter_meta {
    region_optional_chrx: "region (optional, chrX:123-456 if missing, process the whole bam)."
    append_count_ct: "append count of C>T (YC tag) and G>A (YG tag) in output bam."
    correct_bsstrand_output: "correct bsstrand in the output bam, YD tag will be replaced if existent and created if not."
    optional_output_bam: "optional output bam, work with -y or -c"
  }
}