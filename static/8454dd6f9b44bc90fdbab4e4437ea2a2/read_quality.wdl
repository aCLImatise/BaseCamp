version 1.0

task ReadQuality.py {
  input {
    String? input_file
    String? out_prefix
    String? reduce
    String? mapq
  }
  command <<<
    read_quality.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(reduce) then ("--reduce " +  '"' + reduce + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format. [required]"
    out_prefix: "Prefix of output files(s). [required]"
    reduce: "To avoid making huge vector in R, nucleotide with particular phred score less frequent than this number will be ignored. Increase this number save more memory while reduce precision. Set to 1 achieves maximum precision (i.e. every nucleotide will be considered). This option only applies to the 'boxplot'. default=1"
    mapq: "Minimum mapping quality (phred scaled) for an alignment to be called \"uniquely mapped\". default=30"
  }
}