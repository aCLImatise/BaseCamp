version 1.0

task RiboraptorUniqbam {
  input {
    String? in_bam
    String? out_bam
  }
  command <<<
    riboraptor uniq_bam \
      ~{if defined(in_bam) then ("--inbam " +  '"' + in_bam + '"') else ""} \
      ~{if defined(out_bam) then ("--outbam " +  '"' + out_bam + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_bam: "[required]"
    out_bam: "[required]"
  }
  output {
    File out_stdout = stdout()
  }
}