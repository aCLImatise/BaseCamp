version 1.0

task LongshotFLAGS {
  input {
    String? ref
    String? bam
  }
  command <<<
    longshot FLAGS \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: ""
    bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}