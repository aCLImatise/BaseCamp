version 1.0

task EnrichmExplore {
  input {
    String? queries
    String? matrix
    String? genome_metadata
    String? abundance
    String? abundance_metadata
    String? tpm_values
    String? tpm_metadata
    String? metabo_lome
    String? log
    String? verbosity
    String? output_directory
    Boolean? force
    String? depth
  }
  command <<<
    enrichm explore \
      ~{if defined(queries) then ("--queries " +  '"' + queries + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(genome_metadata) then ("--genome_metadata " +  '"' + genome_metadata + '"') else ""} \
      ~{if defined(abundance) then ("--abundance " +  '"' + abundance + '"') else ""} \
      ~{if defined(abundance_metadata) then ("--abundance_metadata " +  '"' + abundance_metadata + '"') else ""} \
      ~{if defined(tpm_values) then ("--tpm_values " +  '"' + tpm_values + '"') else ""} \
      ~{if defined(tpm_metadata) then ("--tpm_metadata " +  '"' + tpm_metadata + '"') else ""} \
      ~{if defined(metabo_lome) then ("--metabolome " +  '"' + metabo_lome + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""}
  >>>
  parameter_meta {
    queries: "[--depth DEPTH]"
    matrix: "KO matrix. REQUIRED."
    genome_metadata: "Metadata file with two columns, the first with the genome name, the second with the groupings to compare."
    abundance: "Abundance matrix."
    abundance_metadata: "Metadata file with two columns, the first with the genome name, the second with the groupings to compare."
    tpm_values: "TPM values produced by DetectM."
    tpm_metadata: "Metadata file with two columns, the first with the genome name, the second with the groupings to compare."
    metabo_lome: "Metabolome CID matrix."
    log: "Output logging information to this file."
    verbosity: "Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent"
    output_directory: "Output directory"
    force: "Overwrite previous run"
    depth: "Number of steps to take into the metabolic network"
  }
}