version 1.0

task SvtkAnnotate {
  input {
    String? gen_code
    String? noncoding
    String s_vtk
    String vcf
    String annotated_vcf
  }
  command <<<
    svtk annotate \
      ~{s_vtk} \
      ~{vcf} \
      ~{annotated_vcf} \
      ~{if defined(gen_code) then ("--gencode " +  '"' + gen_code + '"') else ""} \
      ~{if defined(noncoding) then ("--noncoding " +  '"' + noncoding + '"') else ""}
  >>>
  parameter_meta {
    gen_code: ""
    noncoding: ""
    s_vtk: ""
    vcf: ""
    annotated_vcf: ""
  }
}