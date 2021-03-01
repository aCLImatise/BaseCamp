version 1.0

task Kaiju2table {
  input {
    File? name_output_file
    File? name_nodesdmp_file
    File? name_namesdmp_file
    String? taxonomic_rank_be
    Float? number_in_denoting
    Int? integer_number_denoting
    Boolean? expand_viruses_shown
    Boolean? unclassified_reads_counted
    Boolean? print_full_taxon
    Boolean? print_taxon_path
    Boolean? enable_verbose_output
    Int input_one_dot_tsv
  }
  command <<<
    kaiju2table \
      ~{input_one_dot_tsv} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(name_nodesdmp_file) then ("-t " +  '"' + name_nodesdmp_file + '"') else ""} \
      ~{if defined(name_namesdmp_file) then ("-n " +  '"' + name_namesdmp_file + '"') else ""} \
      ~{if defined(taxonomic_rank_be) then ("-r " +  '"' + taxonomic_rank_be + '"') else ""} \
      ~{if defined(number_in_denoting) then ("-m " +  '"' + number_in_denoting + '"') else ""} \
      ~{if defined(integer_number_denoting) then ("-c " +  '"' + integer_number_denoting + '"') else ""} \
      ~{if (expand_viruses_shown) then "-e" else ""} \
      ~{if (unclassified_reads_counted) then "-u" else ""} \
      ~{if (print_full_taxon) then "-p" else ""} \
      ~{if (print_taxon_path) then "-l" else ""} \
      ~{if (enable_verbose_output) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kaiju:1.7.4--h8b12597_0"
  }
  parameter_meta {
    name_output_file: "Name of output file."
    name_nodesdmp_file: "Name of nodes.dmp file"
    name_namesdmp_file: "Name of names.dmp file."
    taxonomic_rank_be: "Taxonomic rank, must be one of: phylum, class, order, family, genus, species"
    number_in_denoting: "Number in [0, 100], denoting the minimum required percentage for the taxon (except viruses) to be reported (default: 0.0)"
    integer_number_denoting: "Integer number > 0, denoting the minimum required number of reads for the taxon (except viruses) to be reported (default: 0)"
    expand_viruses_shown: "Expand viruses, which are always shown as full taxon path and read counts are not summarized in higher taxonomic levels."
    unclassified_reads_counted: "Unclassified reads are not counted for the total reads when calculating percentages for classified reads."
    print_full_taxon: "Print full taxon path."
    print_taxon_path: "Print taxon path containing only ranks specified by a comma-separated list,\\nfor example: superkingdom,phylum,class,order,family,genus,species"
    enable_verbose_output: "Enable verbose output."
    input_one_dot_tsv: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}