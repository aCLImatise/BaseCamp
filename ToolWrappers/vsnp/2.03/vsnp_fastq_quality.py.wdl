version 1.0

task VsnpFastqQualitypy {
  input {
    Int? read_one
    Int? read_two
    Boolean? v
    String prog
  }
  command <<<
    vsnp_fastq_quality_py \
      ~{prog} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_one: "Required: single read, R1 if Illumina read"
    read_two: "Required: R2 Illumina read"
    v: ""
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}