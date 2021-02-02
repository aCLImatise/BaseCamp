version 1.0

task BamStatpy {
  input {
    File? input_file
    Int? mapq
  }
  command <<<
    bam_stat_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    mapq: "Minimum mapping quality (phred scaled) to determine\\n\\\"uniquely mapped\\\" reads. default=30\\n"
  }
  output {
    File out_stdout = stdout()
  }
}