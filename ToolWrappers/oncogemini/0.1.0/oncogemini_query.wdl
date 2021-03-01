version 1.0

task OncogeminiQuery {
  input {
    String? query_issued_database
    String? gt_filter
    Boolean? show_samples
    Boolean? show_families
    Boolean? family_wise
    Int? min_kindreds
    String? sample_delim
    Boolean? header
    String? sample_filter
    Boolean? in
    String? format
    Int? region
    String? carrier_summary_by_phenotype
  }
  command <<<
    oncogemini query \
      ~{if defined(query_issued_database) then ("-q " +  '"' + query_issued_database + '"') else ""} \
      ~{if defined(gt_filter) then ("--gt-filter " +  '"' + gt_filter + '"') else ""} \
      ~{if (show_samples) then "--show-samples" else ""} \
      ~{if (show_families) then "--show-families" else ""} \
      ~{if (family_wise) then "--family-wise" else ""} \
      ~{if defined(min_kindreds) then ("--min-kindreds " +  '"' + min_kindreds + '"') else ""} \
      ~{if defined(sample_delim) then ("--sample-delim " +  '"' + sample_delim + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(sample_filter) then ("--sample-filter " +  '"' + sample_filter + '"') else ""} \
      ~{if (in) then "--in" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(carrier_summary_by_phenotype) then ("--carrier-summary-by-phenotype " +  '"' + carrier_summary_by_phenotype + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query_issued_database: "The query to be issued to the database"
    gt_filter: "Restrictions to apply to genotype values"
    show_samples: "Add a column of all sample names with a variant to\\neach variant."
    show_families: "Add a column listing all of the families with a\\nvariant to each variant."
    family_wise: "Perform the sample-filter on a family-wise basis."
    min_kindreds: "Minimum number of families for a variant passing a\\nfamily-wise filter to be in."
    sample_delim: "The delimiter to be used with the --show-samples\\noption."
    header: "Add a header of column names to the output."
    sample_filter: "SQL filter to use to filter the sample table"
    in: "[{all,none,any,only,not} [{all,none,any,only,not} ...]]\\nA variant must be in either all, none or any samples\\npassing the --sample-query filter."
    format: "Format of output (JSON, TPED or default)"
    region: "Restrict query to this region, e.g. chr1:10-20."
    carrier_summary_by_phenotype: "Output columns of counts of carriers and non-carriers\\nstratified by the given sample phenotype column\\n"
  }
  output {
    File out_stdout = stdout()
  }
}