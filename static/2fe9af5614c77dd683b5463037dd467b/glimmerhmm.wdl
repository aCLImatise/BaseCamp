version 1.0

task Glimmerhmm {
  input {
    File? protein_domain_searches
    Directory? training_directory_specified
    File? print_output_n
    String? print_top_best
    Boolean? print_output_gff
    Boolean? use_site_predictions
    Boolean? make_partial_predictions
    File genome_one_file
    Int training_dir_for_genome_one
  }
  command <<<
    glimmerhmm \
      ~{genome_one_file} \
      ~{training_dir_for_genome_one} \
      ~{if defined(protein_domain_searches) then ("-p " +  '"' + protein_domain_searches + '"') else ""} \
      ~{if defined(training_directory_specified) then ("-d " +  '"' + training_directory_specified + '"') else ""} \
      ~{if defined(print_output_n) then ("-o " +  '"' + print_output_n + '"') else ""} \
      ~{if defined(print_top_best) then ("-n " +  '"' + print_top_best + '"') else ""} \
      ~{if (print_output_gff) then "-g" else ""} \
      ~{if (use_site_predictions) then "-v" else ""} \
      ~{if (make_partial_predictions) then "-f" else ""}
  >>>
  parameter_meta {
    protein_domain_searches: "If protein domain searches are available, read them from file file_name"
    training_directory_specified: "Training directory is specified by dir_name (introduced for compatibility with earlier versions)"
    print_output_n: "Print output in file_name; if n>1 for top best predictions, output is in file_name.1, file_name.2, ... , file_name.n f"
    print_top_best: "Print top n best predictions"
    print_output_gff: "Print output in gff format"
    use_site_predictions: "Don't use svm splice site predictions"
    make_partial_predictions: "Don't make partial gene predictions"
    genome_one_file: ""
    training_dir_for_genome_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}