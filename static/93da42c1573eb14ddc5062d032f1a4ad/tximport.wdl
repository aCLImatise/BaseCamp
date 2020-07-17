version 1.0

task Tximport.R {
  input {
    File? files
    String? type
    String? output_counts_file
    String? output_abundances_file
    String? output_stats_file
    String? output_format
    String? tx_in
    String? tx_out
    String? counts_from_abundance
    String? tx_two_gene
    String? var_reduce
    String? drop_inf_reps
    String? ignore_tx_version
    String? ignore_after_bar
    String? geneid_col
    String? tx_id_col
    String? abundance_col
    String? counts_col
    Int? length_col
    String? importer
    String? existence_optional
    String? read_length
  }
  command <<<
    tximport.R \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(output_counts_file) then ("--outputCountsFile " +  '"' + output_counts_file + '"') else ""} \
      ~{if defined(output_abundances_file) then ("--outputAbundancesFile " +  '"' + output_abundances_file + '"') else ""} \
      ~{if defined(output_stats_file) then ("--outputStatsFile " +  '"' + output_stats_file + '"') else ""} \
      ~{if defined(output_format) then ("--outputFormat " +  '"' + output_format + '"') else ""} \
      ~{if defined(tx_in) then ("--txIn " +  '"' + tx_in + '"') else ""} \
      ~{if defined(tx_out) then ("--txOut " +  '"' + tx_out + '"') else ""} \
      ~{if defined(counts_from_abundance) then ("--countsFromAbundance " +  '"' + counts_from_abundance + '"') else ""} \
      ~{if defined(tx_two_gene) then ("--tx2gene " +  '"' + tx_two_gene + '"') else ""} \
      ~{if defined(var_reduce) then ("--varReduce " +  '"' + var_reduce + '"') else ""} \
      ~{if defined(drop_inf_reps) then ("--dropInfReps " +  '"' + drop_inf_reps + '"') else ""} \
      ~{if defined(ignore_tx_version) then ("--ignoreTxVersion " +  '"' + ignore_tx_version + '"') else ""} \
      ~{if defined(ignore_after_bar) then ("--ignoreAfterBar " +  '"' + ignore_after_bar + '"') else ""} \
      ~{if defined(geneid_col) then ("--geneIdCol " +  '"' + geneid_col + '"') else ""} \
      ~{if defined(tx_id_col) then ("--txIdCol " +  '"' + tx_id_col + '"') else ""} \
      ~{if defined(abundance_col) then ("--abundanceCol " +  '"' + abundance_col + '"') else ""} \
      ~{if defined(counts_col) then ("--countsCol " +  '"' + counts_col + '"') else ""} \
      ~{if defined(length_col) then ("--lengthCol " +  '"' + length_col + '"') else ""} \
      ~{if defined(importer) then ("--importer " +  '"' + importer + '"') else ""} \
      ~{if defined(existence_optional) then ("--existenceOptional " +  '"' + existence_optional + '"') else ""} \
      ~{if defined(read_length) then ("--readLength " +  '"' + read_length + '"') else ""}
  >>>
  parameter_meta {
    files: "Text file containing a list of filenames for the transcript-level abundances (one per line). Sample names will be derived from directory names"
    type: "The type of software used to generate the abundances. Must be one of 'none', 'salmon', 'sailfish', 'kallisto', 'rsem', 'stringtie'. This argument is used to autofill the arguments below (geneIdCol, etc.) 'none' means that the user will specify these columns."
    output_counts_file: "Counts output file path. Where output format is 'sparse', this should be a directory path"
    output_abundances_file: "Abundances output file path. Where output format is 'sparse', this should be a directory path"
    output_stats_file: "File in which to output a summary of statistics (Kallisto only)"
    output_format: "Output file format. Once of 'tsv' (tab separated), 'sparse' (Cellranger Matrix Market format), 'HDF5' (HDF5)"
    tx_in: "Whether the incoming files are transcript level (default TRUE)"
    tx_out: "Whether the function should just output transcript-level (default FALSE)"
    counts_from_abundance: "Whether to generate estimated counts using abundance estimates: 'no' (default), 'scaledTPM' (scaled up to library size), 'lengthScaledTPM' (scaled using the average transcript length over samples and then the library size), or 'dtuScaledTPM' (scaled using the median transcript length among isoforms of a gene, and then the library size (dtuScaledTPM))"
    tx_two_gene: "A two-column tab-delimited text file linking transcript id (column 1) to gene id (column 2). This argument is required for gene-level summarization for methods that provides transcript-level estimates only (kallisto, Salmon, Sailfish)"
    var_reduce: "whether to reduce per-sample inferential replicates information into a matrix of sample variances variance (default FALSE)"
    drop_inf_reps: "Whether to skip reading in inferential replicates (default FALSE)"
    ignore_tx_version: "logical, whether to split the tx id on the '.' character to remove version information, for easier matching with the tx id in gene2tx (default FALSE)"
    ignore_after_bar: "logical, whether to split the tx id on the '|' character (default FALSE)"
    geneid_col: "Name of column with gene id. if missing, the gene2tx argument can be used"
    tx_id_col: "Name of column with tx id"
    abundance_col: "Name of column with abundances (e.g. TPM or FPKM)"
    counts_col: "Name of column with estimated counts"
    length_col: "Name of column with feature length information"
    importer: "A function used to read in the files"
    existence_optional: "logical, should tximport not check if files exist before attempting import (default FALSE, meaning files must exist according to file.exists)"
    read_length: "numeric, the read length used to calculate counts from StringTie's output of coverage. Default value (from StringTie) is 75. The formula used to calculate counts is: cov * transcript length / read length"
  }
}