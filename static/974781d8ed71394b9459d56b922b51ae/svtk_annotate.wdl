version 1.0

task SvtkAnnotate {
  input {
    String? gen_code
    String? noncoding
    String site_dot
    String vcf
    String annotated_vcf
  }
  command <<<
    svtk annotate \
      ~{site_dot} \
      ~{vcf} \
      ~{annotated_vcf} \
      ~{if defined(gen_code) then ("--gencode " +  '"' + gen_code + '"') else ""} \
      ~{if defined(noncoding) then ("--noncoding " +  '"' + noncoding + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gen_code: "Gencode gene annotations (GTF)."
    noncoding: "Noncoding elements (bed). Columns =\\nchr,start,end,element_class,element_name\\n"
    site_dot: "An SV is annotated with a new NONCODING INFO field containing all classes of"
    vcf: "Structural variants."
    annotated_vcf: "Annotated variants."
  }
  output {
    File out_stdout = stdout()
  }
}