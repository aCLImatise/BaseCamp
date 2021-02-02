version 1.0

task Qualimap {
  input {
    Boolean? java_mem_size
  }
  command <<<
    qualimap \
      ~{if (java_mem_size) then "--java-mem-size" else ""}
  >>>
  parameter_meta {
    java_mem_size: "Use this argument to set Java memory heap size. Example:\\nqualimap bamqc -bam very_large_alignment.bam --java-mem-size=4G\\n"
  }
  output {
    File out_stdout = stdout()
  }
}