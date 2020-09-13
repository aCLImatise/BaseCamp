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