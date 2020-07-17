version 1.0

task EnsemblExtractProteinCodingExonAnnotations.py {
  input {
    String? annotation_file
    String? output_file
    String? species
    String? chromosome_pattern
    String? field_name
    File? log_file
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    ensembl_extract_protein_coding_exon_annotations.py \
      ~{if defined(annotation_file) then ("--annotation-file " +  '"' + annotation_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(chromosome_pattern) then ("--chromosome-pattern " +  '"' + chromosome_pattern + '"') else ""} \
      ~{if defined(field_name) then ("--field-name " +  '"' + field_name + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    annotation_file: "Path of Ensembl gene annotation file (in GTF format). The file may be gzip'ed. If set to ``-``, read from ``stdin``."
    output_file: "Path of output file. If set to ``-``, print to ``stdout``, and redirect logging messages to ``stderr``."
    species: "Species for which to extract genes. (This parameter is ignored if ``--chromosome-pattern`` is specified.)"
    chromosome_pattern: "Regular expression that chromosome names have to match. If not specified, determine pattern based on ``--species``."
    field_name: "Rows in the GTF file that do not contain this value in the third column are ignored."
    log_file: "Path of log file (if specified, report to stdout AND file."
    quiet: "Only output errors and warnings."
    verbose: "Enable verbose output. Ignored if --quiet is specified."
  }
}