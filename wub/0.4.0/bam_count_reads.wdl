version 1.0

task BamCountReads.pyBam {
  input {
    Int? a
    String? f
    String? z
    String bam_count_reads_do_tpy
  }
  command <<<
    bam_count_reads.py bam \
      ~{bam_count_reads_do_tpy} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(z) then ("-z " +  '"' + z + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    f: ""
    z: ""
    bam_count_reads_do_tpy: ""
  }
}