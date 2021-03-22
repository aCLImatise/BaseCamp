version 1.0

task GNUVIDpy {
  input {
    File? mk_database
    File? database
    File? list_order
    File? country_continent
    Directory? output_folder
    Boolean? force
    String? prefix
    Boolean? quiet
    String reference
    String query_fna
  }
  command <<<
    GNUVID_py \
      ~{reference} \
      ~{query_fna} \
      ~{if defined(mk_database) then ("--mkdatabase " +  '"' + mk_database + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(list_order) then ("--list_order " +  '"' + list_order + '"') else ""} \
      ~{if defined(country_continent) then ("--country_continent " +  '"' + country_continent + '"') else ""} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.2--0"
  }
  parameter_meta {
    mk_database: "you have to provide path to a folder of multiple fna\\nfiles for compression"
    database: "you have to provide path to your compressed database"
    list_order: "you have to provide path to txt file with isolates\\nordered by collection date"
    country_continent: "you have to provide path to csv file with a country to\\ncontinent assignment, csv of first three columns from\\nGISAID acknowledgment table"
    output_folder: "Database output prefix to be created for results\\n(default: timestamped GNUVID_results in the current\\ndirectory)"
    force: "Force overwriting existing results folder assigned\\nwith -o (default: off)"
    prefix: "Prefix for output compressed database (default:\\nGNUVID)"
    quiet: "No screen output [default OFF]"
    reference: "full path to the reference (MN908947.3_cds.fna)"
    query_fna: "Query Whole Genome or CDS (for the 10 ORFs) Nucleotide\\nFASTA file/s to analyze (.fna)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}