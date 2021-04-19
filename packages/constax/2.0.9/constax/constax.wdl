version 1.0

task Constax {
  input {
    Float? conf
    Directory? num_threads
    Int? m_hits
    Float? evalue
    Float? p_iden
    String? db
    File? train_file
    File? input_file_fasta
    Directory? output_directory_classifications
    Directory? tax
    Boolean? train
    Boolean? blast
    File? select_by_keyword
    Boolean? msu_hpcc
    Boolean? conservative
    Boolean? make_plot
    Boolean? check
    Int? mem
    File? sin_tax_path
    File? u_tax_path
    File? rdp_path
    File? cons_tax_path
    File? path_file
    File? isolates
    Int? isolates_query_coverage
    Int? isolates_percent_identity
    File? high_level_db
    Int? high_level_query_coverage
    Int? high_level_percent_identity
  }
  command <<<
    constax \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(m_hits) then ("--mhits " +  '"' + m_hits + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(p_iden) then ("--p_iden " +  '"' + p_iden + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(train_file) then ("--trainfile " +  '"' + train_file + '"') else ""} \
      ~{if defined(input_file_fasta) then ("--input " +  '"' + input_file_fasta + '"') else ""} \
      ~{if defined(output_directory_classifications) then ("--output " +  '"' + output_directory_classifications + '"') else ""} \
      ~{if defined(tax) then ("--tax " +  '"' + tax + '"') else ""} \
      ~{if (train) then "--train" else ""} \
      ~{if (blast) then "--blast" else ""} \
      ~{if defined(select_by_keyword) then ("--select_by_keyword " +  '"' + select_by_keyword + '"') else ""} \
      ~{if (msu_hpcc) then "--msu_hpcc" else ""} \
      ~{if (conservative) then "--conservative" else ""} \
      ~{if (make_plot) then "--make_plot" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(sin_tax_path) then ("--sintax_path " +  '"' + sin_tax_path + '"') else ""} \
      ~{if defined(u_tax_path) then ("--utax_path " +  '"' + u_tax_path + '"') else ""} \
      ~{if defined(rdp_path) then ("--rdp_path " +  '"' + rdp_path + '"') else ""} \
      ~{if defined(cons_tax_path) then ("--constax_path " +  '"' + cons_tax_path + '"') else ""} \
      ~{if defined(path_file) then ("--pathfile " +  '"' + path_file + '"') else ""} \
      ~{if defined(isolates) then ("--isolates " +  '"' + isolates + '"') else ""} \
      ~{if defined(isolates_query_coverage) then ("--isolates_query_coverage " +  '"' + isolates_query_coverage + '"') else ""} \
      ~{if defined(isolates_percent_identity) then ("--isolates_percent_identity " +  '"' + isolates_percent_identity + '"') else ""} \
      ~{if defined(high_level_db) then ("--high_level_db " +  '"' + high_level_db + '"') else ""} \
      ~{if defined(high_level_query_coverage) then ("--high_level_query_coverage " +  '"' + high_level_query_coverage + '"') else ""} \
      ~{if defined(high_level_percent_identity) then ("--high_level_percent_identity " +  '"' + high_level_percent_identity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/constax:2.0.9--hdfd78af_0"
  }
  parameter_meta {
    conf: "Classification confidence threshold (default: 0.8)"
    num_threads: "directory to for output files (default: 1)"
    m_hits: "Maximum number of BLAST hits to use, for use with -b\\noption (default: 10)"
    evalue: "Maximum expect value of BLAST hits to use, for use\\nwith -b option (default: 1.0)"
    p_iden: "Minimum proportion identity of BLAST hits to use, for\\nuse with -b option (default: 0.0)"
    db: "Database to train classifiers, in FASTA format\\n(default: )"
    train_file: "Path to which training files will be written (default:\\n./training_files)"
    input_file_fasta: "Input file in FASTA format containing sequence records\\nto classify (default: otus.fasta)"
    output_directory_classifications: "Output directory for classifications (default:\\n./outputs)"
    tax: "Directory for taxonomy assignments (default:\\n./taxonomy_assignments)"
    train: "Complete training if specified (default: False)"
    blast: "Use BLAST instead of UTAX if specified (default:\\nFalse)"
    select_by_keyword: "Takes a keyword argument and --input FASTA file to\\nproduce a filtered database with headers containing\\nthe keyword with name --output (default: False)"
    msu_hpcc: "If specified, use executable paths on Michigan State\\nUniversity HPCC. Overrides other path arguments\\n(default: False)"
    conservative: "If specified, use conservative consensus rule (2 False\\n= False winner) (default: False)"
    make_plot: "If specified, run R script to make plot of classified\\ntaxa (default: False)"
    check: "If specified, runs checks but stops before training or\\nclassifying (default: False)"
    mem: "Memory available to use for RDP, in MB. 32000MB\\nrecommended for UNITE, 128000MB for SILVA (default:\\n32000)"
    sin_tax_path: "Path to USEARCH/VSEARCH executable for SINTAX\\nclassification (default: False)"
    u_tax_path: "Path to USEARCH executable for UTAX classification\\n(default: False)"
    rdp_path: "Path to RDP classifier.jar file (default: False)"
    cons_tax_path: "Path to CONSTAX scripts (default: False)"
    path_file: "File with paths to SINTAX, UTAX, RDP, and CONSTAX\\nexecutables (default: pathfile.txt)"
    isolates: "FASTA formatted file of isolates to use BLAST against\\n(default: False)"
    isolates_query_coverage: "Threshold of sequence query coverage to report isolate\\nmatches (default: 75)"
    isolates_percent_identity: "Threshold of aligned sequence percent identity to\\nreport isolate matches (default: 1)"
    high_level_db: "FASTA database file of representative sequences for\\nassignment of high level taxonomy (default: False)"
    high_level_query_coverage: "Threshold of sequence query coverage to report high-\\nlevel taxonomy matches (default: 75)"
    high_level_percent_identity: "Threshold of aligned sequence percent identity to\\nreport high-level taxonomy matches (default: 1)"
  }
  output {
    File out_stdout = stdout()
    Directory out_num_threads = "${in_num_threads}"
    Directory out_output_directory_classifications = "${in_output_directory_classifications}"
  }
}