version 1.0

task GanonReport {
  input {
    Boolean? database_prefix_used
    File? output_format
    Boolean? report_type
    Boolean? sort
    Boolean? split_hierarchy
    Boolean? one_more_hierarchies_skip
    Boolean? one_more_hierarchies_keep
    Boolean? tax_dump_file
    Boolean? input_directory
    Boolean? input_extension
    Boolean? verbose
    Boolean? quiet
    Boolean? min_count
    Boolean? min_percentage
    Boolean? names
    Boolean? tax_ids
    Boolean? one_more_files
    File? output_prefix
  }
  command <<<
    ganon report \
      ~{if (database_prefix_used) then "-d" else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if (report_type) then "--report-type" else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (split_hierarchy) then "--split-hierarchy" else ""} \
      ~{if (one_more_hierarchies_skip) then "-p" else ""} \
      ~{if (one_more_hierarchies_keep) then "-k" else ""} \
      ~{if (tax_dump_file) then "--taxdump-file" else ""} \
      ~{if (input_directory) then "--input-directory" else ""} \
      ~{if (input_extension) then "--input-extension" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (min_count) then "--min-count" else ""} \
      ~{if (min_percentage) then "--min-percentage" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (tax_ids) then "--taxids" else ""} \
      ~{if (one_more_files) then "-i" else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0"
  }
  parameter_meta {
    database_prefix_used: "[ [ ...]], --db-prefix [ [ ...]]\\nDatabase prefix[es] used for classification (in any\\norder). Only \\\".tax\\\" file is required. If not provided,\\nnew taxonomy will be downloaded"
    output_format: "Output format [text, tsv, csv]. text outputs a\\ntabulated formatted text file for better\\nvisualization. Default: tsv"
    report_type: "Type of report to generate [reads, matches]. Default:"
    sort: "Sort report by [rank, lineage, count, unique].\\nDefault: rank (with custom --ranks) or lineage (with\\n--ranks all)"
    split_hierarchy: "Split output reports by hierarchy (from ganon classify\\n--hierarchy-labels). If activated, the output files\\nwill be named as \\\"{output_prefix}.{hierarchy}.tre\\\""
    one_more_hierarchies_skip: "[ [ ...]], --skip-hierarchy [ [ ...]]\\nOne or more hierarchies to skip in the report (from\\nganon classify --hierarchy-labels)"
    one_more_hierarchies_keep: "[ [ ...]], --keep-hierarchy [ [ ...]]\\nOne or more hierarchies to keep in the report (from\\nganon classify --hierarchy-labels)"
    tax_dump_file: "[ [ ...]]\\nForce use of a specific version of the\\n(taxdump.tar.gz) or (nodes.dmp names.dmp [merged.dmp])\\nfile(s) from NCBI Taxonomy (otherwise it will be\\nautomatically downloaded)"
    input_directory: "Directory containing input files"
    input_extension: "Extension of files to use with --input-directory\\n(provide it without * expansion, e.g. \\\".rep\\\")"
    verbose: "Verbose output mode"
    quiet: "Quiet output mode"
    min_count: "Minimum number of counts to keep the taxa"
    min_percentage: "Minimum percentage of counts to keep the taxa [0-1]"
    names: "[ [ ...]]     Show only entries matching exact names of the provided"
    tax_ids: "[ [ ...]]    One or more taxids to report (including children taxa)"
    one_more_files: "[REP_FILES [REP_FILES ...]], --rep-files [REP_FILES [REP_FILES ...]]\\nOne or more *.rep files from ganon classify"
    output_prefix: "Output prefix for report file \\\"{output_prefix}.tre\\\".\\nIn case of multiple files, the base input filename\\nwill be appended at the end of the output file\\n\\\"{output_prefix + FILENAME}.tre\\\"\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_format = "${in_output_format}"
  }
}