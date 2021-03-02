version 1.0

task MetaCHIPPI {
  input {
    Directory? input_genome_folder
    String? tax_on
    String? output_prefix
    String? grouping_rank_choose
    File? grouping_file
    File? file_extension
    Boolean? non_meta
    Int? number_threads_default
    Boolean? quiet
    Boolean? force
    Boolean? no_blast
  }
  command <<<
    MetaCHIP PI \
      ~{if defined(input_genome_folder) then ("-i " +  '"' + input_genome_folder + '"') else ""} \
      ~{if defined(tax_on) then ("-taxon " +  '"' + tax_on + '"') else ""} \
      ~{if defined(output_prefix) then ("-p " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(grouping_rank_choose) then ("-r " +  '"' + grouping_rank_choose + '"') else ""} \
      ~{if defined(grouping_file) then ("-g " +  '"' + grouping_file + '"') else ""} \
      ~{if defined(file_extension) then ("-x " +  '"' + file_extension + '"') else ""} \
      ~{if (non_meta) then "-nonmeta" else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (no_blast) then "-noblast" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0"
  }
  parameter_meta {
    input_genome_folder: "input genome folder"
    tax_on: "taxonomic classification of input genomes"
    output_prefix: "output prefix"
    grouping_rank_choose: "grouping rank, choose from p (phylum), c (class), o (order), f\\n(family), g (genus) or any combination of them"
    grouping_file: "grouping file"
    file_extension: "file extension"
    non_meta: "provide if input genomes are NOT metagenome-assembled genomes"
    number_threads_default: "number of threads, default: 1"
    quiet: "not report progress"
    force: "force overwrite existing results"
    no_blast: "skip running all-vs-all blastn, provide if you have other ways\\n(e.g. with job scripts) to speed up the blastn step"
  }
  output {
    File out_stdout = stdout()
  }
}