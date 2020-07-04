version 1.0

task Busco {
  input {
    String? file__fasta
    String? cpu
    String? out
    String? out_path
    String? evalue
    String? specify_busco_mode
    String? lineage_dataset
    Boolean? force
    String? limit
    Boolean? long
    Boolean? quiet
    String? augustus_parameters
    String? augustus_species
    Boolean? auto_lineage
    Boolean? auto_lineage_prok
    Boolean? auto_lineage_e_uk
    Boolean? update_data
    Boolean? offline
    String? config
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
      ~{if defined(specify_busco_mode) then ("--mode " +  '"' + specify_busco_mode + '"') else ""} \
      ~{if defined(lineage_dataset) then ("--lineage_dataset " +  '"' + lineage_dataset + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{true="--long" false="" long} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(augustus_parameters) then ("--augustus_parameters " +  '"' + augustus_parameters + '"') else ""} \
      ~{if defined(augustus_species) then ("--augustus_species " +  '"' + augustus_species + '"') else ""} \
      ~{true="--auto-lineage" false="" auto_lineage} \
      ~{true="--auto-lineage-prok" false="" auto_lineage_prok} \
      ~{true="--auto-lineage-euk" false="" auto_lineage_e_uk} \
      ~{true="--update-data" false="" update_data} \
      ~{true="--offline" false="" offline} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--list-datasets" false="" list_datasets}
  >>>
  parameter_meta {
    file__fasta: "FILE, --in FASTA FILE Input sequence file in FASTA format. Can be an assembled genome or transcriptome (DNA), or protein sequences from an annotated gene set."
    cpu: "Specify the number (N=integer) of threads/cores to use."
    out: "Give your analysis run a recognisable short name. Output folders and files will be labelled with this name. WARNING: do not provide a path"
    out_path: "Optional location for results folder, excluding results folder name. Default is current working directory."
    evalue: "E-value cutoff for BLAST searches. Allowed formats, 0.001 or 1e-03 (Default: 1e-03)"
    specify_busco_mode: "Specify which BUSCO analysis mode to run. There are three valid modes: - geno or genome, for genome assemblies (DNA) - tran or transcriptome, for transcriptome assemblies (DNA) - prot or proteins, for annotated gene sets (protein)"
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
}