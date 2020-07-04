version 1.0

task SvtkRdtest2vcf {
  input {
    String? contigs
  }
  command <<<
    svtk rdtest2vcf \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""}
  >>>
  parameter_meta {
    contigs: "Reference fasta index (.fai). If provided, contigs in index will be used in VCF header. Otherwise all GRCh37 contigs will be used in header."
  }
}