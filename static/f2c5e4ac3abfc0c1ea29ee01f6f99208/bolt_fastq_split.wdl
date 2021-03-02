version 1.0

task BoltFastqSplit {
  input {
    File? file_path
    File? fq
    File? fq_two
    String genie
    String fast_q
    String split
  }
  command <<<
    bolt fastq split \
      ~{genie} \
      ~{fast_q} \
      ~{split} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if defined(fq) then ("--fq " +  '"' + fq + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_path: "Input FASTQ file (*require)"
    fq: "Output FASTQ1 file (*require)"
    fq_two: "Output FASTQ2 file (*require)"
    genie: ""
    fast_q: ""
    split: ""
  }
  output {
    File out_stdout = stdout()
    File out_fq = "${in_fq}"
    File out_fq_two = "${in_fq_two}"
  }
}