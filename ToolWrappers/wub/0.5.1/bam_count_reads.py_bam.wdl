version 1.0

task BamCountReadspyBam {
  input {
    String? z
    String? f
    String? a
    String bam_count_reads_do_tpy
  }
  command <<<
    bam_count_reads_py bam \
      ~{bam_count_reads_do_tpy} \
      ~{if defined(z) then ("-z " +  '"' + z + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    z: ""
    f: ""
    a: ""
    bam_count_reads_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}