version 1.0

task Constax {
  input {
    Int? conf
    Int? num_threads
    Int? max_hits
    Int? evalue
    Int? p_iden
    Boolean? db
    Boolean? train_file
    File? input_file_containing
    Directory? output_directory_classifications
    Boolean? tax
    Boolean? train
    Boolean? blast
    Boolean? select_by_keyword
    Boolean? msu_hpcc
    Boolean? conservative
    Boolean? make_plot
    Boolean? check
    Boolean? mem
    Boolean? sin_tax_path
    Boolean? u_tax_path
    Boolean? rdp_path
    Boolean? cons_tax_path
    Boolean? path_file
    Boolean? isolates
    Int? isolates_query_coverage
    Int? isolates_percent_identity
    Boolean? high_level_db
    Int? high_level_query_coverage
    Int? high_level_percent_identity
  }
  command <<<
    constax \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(max_hits) then ("--max_hits " +  '"' + max_hits + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(p_iden) then ("--p_iden " +  '"' + p_iden + '"') else ""} \
      ~{if (db) then "--db" else ""} \
      ~{if (train_file) then "--trainfile" else ""} \
      ~{if defined(input_file_containing) then ("--input " +  '"' + input_file_containing + '"') else ""} \
      ~{if (output_directory_classifications) then "--output" else ""} \
      ~{if (tax) then "--tax" else ""} \
      ~{if (train) then "--train" else ""} \
      ~{if (blast) then "--blast" else ""} \
      ~{if (select_by_keyword) then "--select_by_keyword" else ""} \
      ~{if (msu_hpcc) then "--msu_hpcc" else ""} \
      ~{if (conservative) then "--conservative" else ""} \
      ~{if (make_plot) then "--make_plot" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (mem) then "--mem" else ""} \
      ~{if (sin_tax_path) then "--sintax_path" else ""} \
      ~{if (u_tax_path) then "--utax_path" else ""} \
      ~{if (rdp_path) then "--rdp_path" else ""} \
      ~{if (cons_tax_path) then "--constax_path" else ""} \
      ~{if (path_file) then "--pathfile" else ""} \
      ~{if (isolates) then "--isolates" else ""} \
      ~{if defined(isolates_query_coverage) then ("--isolates_query_coverage " +  '"' + isolates_query_coverage + '"') else ""} \
      ~{if defined(isolates_percent_identity) then ("--isolates_percent_identity " +  '"' + isolates_percent_identity + '"') else ""} \
      ~{if (high_level_db) then "--high_level_db" else ""} \
      ~{if defined(high_level_query_coverage) then ("--high_level_query_coverage " +  '"' + high_level_query_coverage + '"') else ""} \
      ~{if defined(high_level_percent_identity) then ("--high_level_percent_identity " +  '"' + high_level_percent_identity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/constax:2.0.8--py_0"
  }
  parameter_meta {
    conf: "Classification confidence threshold"
    num_threads: "Number of threads to use"
    max_hits: "Maximum number of BLAST hits to use, for use with -b option"
    evalue: "Maximum expect value of BLAST hits to use, for use with -b option"
    p_iden: "Minimum proportion identity of BLAST hits to use, for use with -b option"
    db: "Database to train classifiers"
    train_file: "=./training_files                    Path to which training files will be written"
    input_file_containing: "Input file in FASTA format containing sequence records to classify"
    output_directory_classifications: "=./outputs                              Output directory for classifications"
    tax: "=./taxonomy_assignments                    Directory for taxonomy assignments"
    train: "Complete training if specified"
    blast: "Use BLAST instead of UTAX if specified"
    select_by_keyword: "Takes a keyword argument and --input FASTA file to produce a filtered database with headers containing the keyword with name --output"
    msu_hpcc: "If specified, use executable paths on Michigan State University HPCC. Overrides other path arguments"
    conservative: "If specified, use conservative consensus rule (2 null = null winner)"
    make_plot: "If specified, run R script to make plot of classified taxa"
    check: "If specified, runs checks but stops before training or classifying"
    mem: "Memory available to use for RDP, in MB. 32000MB recommended for UNITE, 128000MB for SILVA"
    sin_tax_path: "Path to USEARCH/VSEARCH executable for SINTAX classification"
    u_tax_path: "Path to USEARCH executable for UTAX classification"
    rdp_path: "Path to RDP classifier.jar file"
    cons_tax_path: "Path to CONSTAX scripts"
    path_file: "File with paths to SINTAX, UTAX, RDP, and CONSTAX executables"
    isolates: "FASTA formatted file of isolates to use BLAST against"
    isolates_query_coverage: "Threshold of sequence query coverage to report isolate matches"
    isolates_percent_identity: "Threshold of aligned sequence percent identity to report isolate matches"
    high_level_db: "FASTA database file of representative sequences for assignment of high level taxonomy"
    high_level_query_coverage: "Threshold of sequence query coverage to report high-level taxonomy matches"
    high_level_percent_identity: "Threshold of aligned sequence percent identity to report high-level taxonomy matches"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_classifications = "${in_output_directory_classifications}"
  }
}