version 1.0

task SurpyvorInsseqVcf {
  input {
    String? o
    Boolean? verbose
    String sur_py_vor
    String ins_seq
    String bam
    String vcf
  }
  command <<<
    surpyvor insseq vcf \
      ~{sur_py_vor} \
      ~{ins_seq} \
      ~{bam} \
      ~{vcf} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    o: ""
    verbose: ""
    sur_py_vor: ""
    ins_seq: ""
    bam: ""
    vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}