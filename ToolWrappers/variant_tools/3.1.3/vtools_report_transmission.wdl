version 1.0

task VtoolsReportTransmission {
  input {
    String? parentsnames_uniquely_identify
    Array[String] offspring
    Boolean? de_novo
    Boolean? recessive
    Boolean? inconsistent
    String? verbosity
    String? var_6
  }
  command <<<
    vtools_report transmission \
      ~{var_6} \
      ~{if defined(parentsnames_uniquely_identify) then ("--parents " +  '"' + parentsnames_uniquely_identify + '"') else ""} \
      ~{if defined(offspring) then ("--offspring " +  '"' + offspring + '"') else ""} \
      ~{if (de_novo) then "--denovo" else ""} \
      ~{if (recessive) then "--recessive" else ""} \
      ~{if (inconsistent) then "--inconsistent" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parentsnames_uniquely_identify: "PARENTS\\nNames of parents, which should uniquely identify two\\nsamples."
    offspring: "Names of one or more offspring samples."
    de_novo: "[DENOVO [DENOVO ...]]\\nA list of tables to store denovo variants for each\\noffspring. DeNovo variants are defined as offspring\\nvariants that do not exist in any of the parents,\\nincluding the cases when the offspring have different\\nvariants from what parents have at the same genomic\\nlocations."
    recessive: "[RECESSIVE [RECESSIVE ...]]\\nA list of tables to store recessive variants for each\\noffspring. Recessive variants are defined as variants\\nthat are homozygous in offspring, and heterozygous in\\nboth parents."
    inconsistent: "[INCONSISTENT [INCONSISTENT ...]]\\nA list of tables to store variants for each offspring\\nthat demonstrate mendelian inconsistencies, namely\\nvariants that are not passed from parents to offspring\\nin a Mendelian fashion. Examples of inconsistent\\nvariants include de novo variants, homozygous variants\\nin offspring with only one parental carrier, wildtype\\noffspring variants with a homozygous parent,\\nheterozygous offspring variants with two homozygous\\nparents, and more complicated cases when multiple\\nvariants appear at the same sites."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    var_6: ""
  }
  output {
    File out_stdout = stdout()
  }
}