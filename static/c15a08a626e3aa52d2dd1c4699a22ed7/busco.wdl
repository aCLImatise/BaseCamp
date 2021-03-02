version 1.0

task Busco {
  input {
    File? file__fasta
    File? out
    String? specify_busco_mode
    String? lineage_dataset
    Boolean? auto_lineage
    Boolean? auto_lineage_prok
    Boolean? auto_lineage_e_uk
    Int? cpu
    Boolean? force
    Boolean? restart
    Boolean? quiet
    File? out_path
    File? download_path
    Int? datasets_version
    String? download_base_url
    Boolean? update_data
    Boolean? offline
    Int? meta_e_uk_parameters
    Int? meta_e_uk_rerun_parameters
    Float? evalue
    Int? limit
    Boolean? augustus
    Int? augustus_parameters
    String? augustus_species
    Boolean? long
    File? config
    Boolean? list_datasets
    String? sequence_file
    String? lineage
    String? output_name
    String? var_30
    String? other
  }
  command <<<
    busco \
      ~{sequence_file} \
      ~{lineage} \
      ~{output_name} \
      ~{var_30} \
      ~{other} \
      ~{if defined(file__fasta) then ("-i " +  '"' + file__fasta + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(specify_busco_mode) then ("--mode " +  '"' + specify_busco_mode + '"') else ""} \
      ~{if defined(lineage_dataset) then ("--lineage_dataset " +  '"' + lineage_dataset + '"') else ""} \
      ~{if (auto_lineage) then "--auto-lineage" else ""} \
      ~{if (auto_lineage_prok) then "--auto-lineage-prok" else ""} \
      ~{if (auto_lineage_e_uk) then "--auto-lineage-euk" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (restart) then "--restart" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(out_path) then ("--out_path " +  '"' + out_path + '"') else ""} \
      ~{if defined(download_path) then ("--download_path " +  '"' + download_path + '"') else ""} \
      ~{if defined(datasets_version) then ("--datasets_version " +  '"' + datasets_version + '"') else ""} \
      ~{if defined(download_base_url) then ("--download_base_url " +  '"' + download_base_url + '"') else ""} \
      ~{if (update_data) then "--update-data" else ""} \
      ~{if (offline) then "--offline" else ""} \
      ~{if defined(meta_e_uk_parameters) then ("--metaeuk_parameters " +  '"' + meta_e_uk_parameters + '"') else ""} \
      ~{if defined(meta_e_uk_rerun_parameters) then ("--metaeuk_rerun_parameters " +  '"' + meta_e_uk_rerun_parameters + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (augustus) then "--augustus" else ""} \
      ~{if defined(augustus_parameters) then ("--augustus_parameters " +  '"' + augustus_parameters + '"') else ""} \
      ~{if defined(augustus_species) then ("--augustus_species " +  '"' + augustus_species + '"') else ""} \
      ~{if (long) then "--long" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (list_datasets) then "--list-datasets" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/busco:5.0.0--py_0"
  }
  parameter_meta {
    file__fasta: "FILE, --in FASTA FILE\\nInput sequence file in FASTA format. Can be an assembled genome or transcriptome (DNA), or protein sequences from an annotated gene set."
    out: "Give your analysis run a recognisable short name. Output folders and files will be labelled with this name. WARNING: do not provide a path"
    specify_busco_mode: "Specify which BUSCO analysis mode to run.\\nThere are three valid modes:\\n- geno or genome, for genome assemblies (DNA)\\n- tran or transcriptome, for transcriptome assemblies (DNA)\\n- prot or proteins, for annotated gene sets (protein)"
    lineage_dataset: "Specify the name of the BUSCO lineage to be used."
    auto_lineage: "Run auto-lineage to find optimum lineage path"
    auto_lineage_prok: "Run auto-lineage just on non-eukaryote trees to find optimum lineage path"
    auto_lineage_e_uk: "Run auto-placement just on eukaryote tree to find optimum lineage path"
    cpu: "Specify the number (N=integer) of threads/cores to use."
    force: "Force rewriting of existing files. Must be used when output files with the provided name already exist."
    restart: "Continue a run that had already partially completed."
    quiet: "Disable the info logs, displays only errors"
    out_path: "Optional location for results folder, excluding results folder name. Default is current working directory."
    download_path: "Specify local filepath for storing BUSCO dataset downloads"
    datasets_version: "Specify the version of BUSCO datasets, e.g. odb10"
    download_base_url: "Set the url to the remote BUSCO dataset location"
    update_data: "Download and replace with last versions all lineages datasets and files necessary to their automated selection"
    offline: "To indicate that BUSCO cannot attempt to download files"
    meta_e_uk_parameters: "Pass additional arguments to Metaeuk for the first run. All arguments should be contained within a single pair of quotation marks, separated by commas. E.g. \\\"--param1=1,--param2=2\\\""
    meta_e_uk_rerun_parameters: "Pass additional arguments to Metaeuk for the second run. All arguments should be contained within a single pair of quotation marks, separated by commas. E.g. \\\"--param1=1,--param2=2\\\""
    evalue: "E-value cutoff for BLAST searches. Allowed formats, 0.001 or 1e-03 (Default: 1e-03)"
    limit: "How many candidate regions (contig or transcript) to consider per BUSCO (default: 3)"
    augustus: "Use augustus gene predictor for eukaryote runs"
    augustus_parameters: "Pass additional arguments to Augustus. All arguments should be contained within a single pair of quotation marks, separated by commas. E.g. \\\"--param1=1,--param2=2\\\""
    augustus_species: "Specify a species for Augustus training."
    long: "Optimization Augustus self-training mode (Default: Off); adds considerably to the run time, but can improve results for some non-model organisms"
    config: "Provide a config file"
    list_datasets: "Print the list of available BUSCO datasets"
    sequence_file: ""
    lineage: ""
    output_name: ""
    var_30: ""
    other: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_path = "${in_out_path}"
  }
}