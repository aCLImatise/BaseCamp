version 1.0

task Anvianalyzesynteny {
  input {
    File? external_genomes
    String? annotation_source
    Int? n_gram_window_range
    File? output_file
    Boolean? analyze_unknown_functions
    String name
  }
  command <<<
    anvi_analyze_synteny \
      ~{name} \
      ~{if defined(external_genomes) then ("--external-genomes " +  '"' + external_genomes + '"') else ""} \
      ~{if defined(annotation_source) then ("--annotation-source " +  '"' + annotation_source + '"') else ""} \
      ~{if defined(n_gram_window_range) then ("--ngram-window-range " +  '"' + n_gram_window_range + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (analyze_unknown_functions) then "--analyze-unknown-functions" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    external_genomes: "A two-column TAB-delimited flat text file that lists\\nanvi'o contigs databases. The first item in the header\\nline should read 'name', and the second should read\\n'contigs_db_path'. Each line in the file should\\ndescribe a single entry, where the first column is the\\nname of the genome (or MAG), and the second column is\\nthe anvi'o contigs database generated for this genome."
    annotation_source: "NAME\\nGet functional annotations for a specific annotation\\nsource. You can use the flag '--list-annotation-\\nsources' to learn about what sources are available."
    n_gram_window_range: "The range of window sizes of Ngrams to analyze for\\nsynteny patterns.Please format the window-range as x:y\\n(e.g. Window sizes 2 to 4 would be denoted as: 2:4)"
    output_file: "File path to store results."
    analyze_unknown_functions: "Provide this flag if you want anvi-analyze-synteny to\\ntake into account Ngrams that contain gene calls that\\nhave no annotation.\\n"
    name: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}