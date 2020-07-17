version 1.0

task BamStat.py {
  input {
    String? input_file
    String? mapq
  }
  command <<<
    bam_stat.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    mapq: "Minimum mapping quality (phred scaled) to determine \"uniquely mapped\" reads. default=30"
  }
}