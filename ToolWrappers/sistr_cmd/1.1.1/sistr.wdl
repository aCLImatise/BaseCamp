version 1.0

task Sistr {
  input {
    File? genomename__inputfastagenomename
    String? output_format
    File? output_prediction
    Boolean? more_results
    File? cgm_lst_profiles
    File? novel_alleles
    File? alleles_output
    Directory? tmp_dir
    Boolean? keep_tmp
    Boolean? use_full_cgm_lst_db
    Boolean? no_cgm_lst
    Boolean? run_mash
    Boolean? qc
    Int? threads
    Boolean? verbose
    String si_str_cmd
    String? genome_name
  }
  command <<<
    sistr \
      ~{si_str_cmd} \
      ~{genome_name} \
      ~{if defined(genomename__inputfastagenomename) then ("-i " +  '"' + genomename__inputfastagenomename + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(output_prediction) then ("--output-prediction " +  '"' + output_prediction + '"') else ""} \
      ~{if (more_results) then "--more-results" else ""} \
      ~{if defined(cgm_lst_profiles) then ("--cgmlst-profiles " +  '"' + cgm_lst_profiles + '"') else ""} \
      ~{if defined(novel_alleles) then ("--novel-alleles " +  '"' + novel_alleles + '"') else ""} \
      ~{if defined(alleles_output) then ("--alleles-output " +  '"' + alleles_output + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (use_full_cgm_lst_db) then "--use-full-cgmlst-db" else ""} \
      ~{if (no_cgm_lst) then "--no-cgmlst" else ""} \
      ~{if (run_mash) then "--run-mash" else ""} \
      ~{if (qc) then "--qc" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genomename__inputfastagenomename: "genome_name, --input-fasta-genome-name fasta_path genome_name\\nfasta file path to genome name pair"
    output_format: "Output format (json, csv, pickle)"
    output_prediction: "SISTR serovar prediction output path"
    more_results: "Output more detailed results (-M) and all antigen\\nsearch blastn results (-MM)"
    cgm_lst_profiles: "Output CSV file destination for cgMLST allelic\\nprofiles"
    novel_alleles: "Output FASTA file destination of novel cgMLST alleles\\nfrom input genomes"
    alleles_output: "Output path of allele sequences and info to JSON"
    tmp_dir: "Base temporary working directory for intermediate\\nanalysis files."
    keep_tmp: "Keep temporary analysis files."
    use_full_cgm_lst_db: "Use the full set of cgMLST alleles which can include\\nhighly similar alleles. By default the smaller\\n\\\"centroid\\\" alleles or representative alleles are used\\nfor each marker."
    no_cgm_lst: "Do not run cgMLST serovar prediction"
    run_mash: "Determine Mash MinHash genomic distances to Salmonella\\ngenomes with trusted serovar designations. Mash binary\\nmust be in accessible via $PATH (e.g. /usr/bin)."
    qc: "Perform basic QC to provide level of confidence in\\nserovar prediction results."
    threads: "Number of parallel threads to run sistr_cmd analysis."
    verbose: "Logging verbosity level (-v == show warnings; -vvv ==\\nshow debug info)"
    si_str_cmd: ""
    genome_name: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_prediction = "${in_output_prediction}"
    File out_cgm_lst_profiles = "${in_cgm_lst_profiles}"
    File out_alleles_output = "${in_alleles_output}"
  }
}