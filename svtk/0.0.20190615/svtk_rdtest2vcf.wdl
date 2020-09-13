version 1.0

task SvtkRdtest2vcf {
  input {
    Int? contigs
  }
  command <<<
    svtk rdtest2vcf \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""}
  >>>
  parameter_meta {
    contigs: "Reference fasta index (.fai). If provided, contigs in\\nindex will be used in VCF header. Otherwise all GRCh37\\ncontigs will be used in header.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}