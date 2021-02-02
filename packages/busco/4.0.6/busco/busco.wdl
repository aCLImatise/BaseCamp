version 1.0

task Busco {
  input {
    File? file__fasta
    Int? cpu
    File? out
    File? out_path
    Float? evalue
    String? specify_busco_analysis
    String? lineage_dataset
    Boolean? force
    Int? limit
    Boolean? long
    Boolean? quiet
    Int? augustus_parameters
    String? augustus_species
    Boolean? auto_lineage
    Boolean? auto_lineage_prok
    Boolean? auto_lineage_e_uk
    Boolean? update_data
    Boolean? offline
    File? config
    Boolean? list_datasets
    String? sequence_file
    String? lineage
    String? output_name
    String? var_23
    String? other
  }
  command <<<
    busco \
      ~{sequence_file} \
      ~{lineage} \
      ~{output_name} \
      ~{var_23} \
      ~{other} \
      ~{if defined(file__fasta) then ("-i " +  '"' + file__fasta + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_path) then ("--out_path " +  '"' + out_path + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(specify_busco_analysis) then ("--mode " +  '"' + specify_busco_analysis + '"') else ""} \
      ~{if defined(lineage_dataset) then ("--lineage_dataset " +  '"' + lineage_dataset + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (long) then "--long" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(augustus_parameters) then ("--augustus_parameters " +  '"' + augustus_parameters + '"') else ""} \
      ~{if defined(augustus_species) then ("--augustus_species " +  '"' + augustus_species + '"') else ""} \
      ~{if (auto_lineage) then "--auto-lineage" else ""} \
      ~{if (auto_lineage_prok) then "--auto-lineage-prok" else ""} \
      ~{if (auto_lineage_e_uk) then "--auto-lineage-euk" else ""} \
      ~{if (update_data) then "--update-data" else ""} \
      ~{if (offline) then "--offline" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (list_datasets) then "--list-datasets" else ""}
  >>>
  parameter_meta {
    file__fasta: "FILE, --in FASTA FILE\\nInput sequence file in FASTA format. Can be an assembled genome or transcriptome (DNA), or protein sequences from an annotated gene set."
    cpu: "Specify the number (N=integer) of threads/cores to use."
    out: "Give your analysis run a recognisable short name. Output folders and files will be labelled with this name. WARNING: do not provide a path"
    out_path: "Optional location for results folder, excluding results folder name. Default is current working directory."
    evalue: "E-value cutoff for BLAST searches. Allowed formats, 0.001 or 1e-03 (Default: 1e-03)"
    specify_busco_analysis: "Specify which BUSCO analysis mode to run.\\nThere are three valid modes:\\n- geno or genome, for genome assemblies (DNA)\\n- tran or transcriptome, for transcriptome assemblies (DNA)\\n- prot or proteins, for annotated gene sets (protein)"
    lineage_dataset: "Specify the name of the BUSCO lineage to be used."
    force: "Force rewriting of existing files. Must be used when output files with the provided name already exist."
    limit: "How many candidate regions (contig or transcript) to consider per BUSCO (default: 3)"
    long: "Optimization mode Augustus self-training (Default: Off) adds considerably to the run time, but can improve results for some non-model organisms"
    quiet: "Disable the info logs, displays only errors"
    augustus_parameters: "Pass additional arguments to Augustus. All arguments should be contained within a single pair of quotation marks, separated by commas. E.g. '--param1=1,--param2=2'"
    augustus_species: "Specify a species for Augustus training."
    auto_lineage: "Run auto-lineage to find optimum lineage path"
    auto_lineage_prok: "Run auto-lineage just on non-eukaryote trees to find optimum lineage path"
    auto_lineage_e_uk: "Run auto-placement just on eukaryote tree to find optimum lineage path"
    update_data: "Download and replace with last versions all lineages datasets and files necessary to their automated selection"
    offline: "To indicate that BUSCO cannot attempt to download files"
    config: "Provide a config file"
    list_datasets: "Print the list of available BUSCO datasets"
    sequence_file: ""
    lineage: ""
    output_name: ""
    var_23: ""
    other: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_path = "${in_out_path}"
  }
}