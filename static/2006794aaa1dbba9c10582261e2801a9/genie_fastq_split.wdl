version 1.0

task GenieFastqSplit {
  input {
    String? file_path
    String? fq
    String? fq_two
    String? flags
  }
  command <<<
    genie fastq split \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if defined(fq) then ("--fq " +  '"' + fq + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""}
  >>>
  parameter_meta {
    file_path: "Input FASTQ file (*require)"
    fq: "Output FASTQ1 file (*require)"
    fq_two: "Output FASTQ2 file (*require)"
    flags: ""
  }
}