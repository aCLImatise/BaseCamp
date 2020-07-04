version 1.0

task Sistr {
  input {
    String? genomename__inputfastagenomename
    String? output_format
    String? output_prediction
    Boolean? more_results
    String? cgm_lst_profiles
    String? novel_alleles
    String? alleles_output
    String? tmp_dir
    Boolean? keep_tmp
    Boolean? use_full_cgm_lst_db
    Boolean? no_cgm_lst
    Boolean? run_mash
    Boolean? qc
    String? threads
    Boolean? verbose
    String input_genome_fasta
  }
  command <<<
    sistr \
      ~{input_genome_fasta} \
      ~{if defined(genomename__inputfastagenomename) then ("-i " +  '"' + genomename__inputfastagenomename + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(output_prediction) then ("--output-prediction " +  '"' + output_prediction + '"') else ""} \
      ~{true="--more-results" false="" more_results} \
      ~{if defined(cgm_lst_profiles) then ("--cgmlst-profiles " +  '"' + cgm_lst_profiles + '"') else ""} \
      ~{if defined(novel_alleles) then ("--novel-alleles " +  '"' + novel_alleles + '"') else ""} \
      ~{if defined(alleles_output) then ("--alleles-output " +  '"' + alleles_output + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{true="--keep-tmp" false="" keep_tmp} \
      ~{true="--use-full-cgmlst-db" false="" use_full_cgm_lst_db} \
      ~{true="--no-cgmlst" false="" no_cgm_lst} \
      ~{true="--run-mash" false="" run_mash} \
      ~{true="--qc" false="" qc} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    genomename__inputfastagenomename: "genome_name, --input-fasta-genome-name fasta_path genome_name fasta file path to genome name pair"
    output_format: "Output format (json, csv, pickle)"
    output_prediction: "SISTR serovar prediction output path"
    more_results: "Output more detailed results (-M) and all antigen search blastn results (-MM)"
    cgm_lst_profiles: "Output CSV file destination for cgMLST allelic profiles"
    novel_alleles: "Output FASTA file destination of novel cgMLST alleles from input genomes"
    alleles_output: "Output path of allele sequences and info to JSON"
    tmp_dir: "Base temporary working directory for intermediate analysis files."
    keep_tmp: "Keep temporary analysis files."
    use_full_cgm_lst_db: "Use the full set of cgMLST alleles which can include highly similar alleles. By default the smaller \"centroid\" alleles or representative alleles are used for each marker."
    no_cgm_lst: "Do not run cgMLST serovar prediction"
    run_mash: "Determine Mash MinHash genomic distances to Salmonella genomes with trusted serovar designations. Mash binary must be in accessible via $PATH (e.g. /usr/bin)."
    qc: "Perform basic QC to provide level of confidence in serovar prediction results."
    threads: "Number of parallel threads to run sistr_cmd analysis."
    verbose: "Logging verbosity level (-v == show warnings; -vvv == show debug info)"
    input_genome_fasta: "Input genome FASTA file"
  }
}