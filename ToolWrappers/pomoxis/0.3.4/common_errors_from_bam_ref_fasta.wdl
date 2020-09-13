version 1.0

task CommonErrorsFromBamRefFasta {
  input {
    String? o
    String common_errors_from_bam
    String bam
    String ref_fast_a
  }
  command <<<
    common_errors_from_bam ref_fasta \
      ~{common_errors_from_bam} \
      ~{bam} \
      ~{ref_fast_a} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    common_errors_from_bam: ""
    bam: ""
    ref_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}