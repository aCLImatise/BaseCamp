version 1.0

task Vcftodeletionlist {
  input {
    Int? maximal_length_considered
    Boolean? include_deletions_marked
    Boolean? print_list_genotypes
  }
  command <<<
    vcf_to_deletionlist \
      ~{if defined(maximal_length_considered) then ("-m " +  '"' + maximal_length_considered + '"') else ""} \
      ~{if (include_deletions_marked) then "-i" else ""} \
      ~{if (print_list_genotypes) then "-g" else ""}
  >>>
  parameter_meta {
    maximal_length_considered: "Maximal length to be considered."
    include_deletions_marked: "Include deletions marked as IMPRECISE."
    print_list_genotypes: "Print list of genotypes as comma-separated list in last\\ncolumn.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}