version 1.0

task SvtkRdtest2vcfFout {
  input {
    String? contigs
    String s_vtk
    Int rd_test_two_vcf
    String bed
    String samples
    String f_out
  }
  command <<<
    svtk rdtest2vcf fout \
      ~{s_vtk} \
      ~{rd_test_two_vcf} \
      ~{bed} \
      ~{samples} \
      ~{f_out} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""}
  >>>
  parameter_meta {
    contigs: ""
    s_vtk: ""
    rd_test_two_vcf: ""
    bed: ""
    samples: ""
    f_out: ""
  }
  output {
    File out_stdout = stdout()
  }
}