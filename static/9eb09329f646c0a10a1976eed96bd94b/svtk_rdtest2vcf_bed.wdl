version 1.0

task SvtkRdtest2vcfBed {
  input {
    String? contigs
    String samples
    String f_out
  }
  command <<<
    svtk rdtest2vcf bed \
      ~{samples} \
      ~{f_out} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""}
  >>>
  parameter_meta {
    contigs: ""
    samples: ""
    f_out: ""
  }
}