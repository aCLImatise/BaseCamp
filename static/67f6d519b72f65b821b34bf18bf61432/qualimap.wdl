version 1.0

task Qualimap {
  input {
    Boolean? java_mem_size
  }
  command <<<
    qualimap \
      ~{true="--java-mem-size" false="" java_mem_size}
  >>>
  parameter_meta {
    java_mem_size: "Use this argument to set Java memory heap size. Example: qualimap bamqc -bam very_large_alignment.bam --java-mem-size=4G"
  }
}