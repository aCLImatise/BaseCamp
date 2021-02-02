version 1.0

task VtoolsPhenotype {
  input {
    Boolean? import_phenotype_tab
    Boolean? set
    Boolean? from_stat
    Boolean? list_outputted_sqlcompatibleexpressions
    String? jobs
    Boolean? limit_operation_use
    Boolean? update_phenotype_samples
    String? verbosity
    Boolean? header
    String? delimiter
    String? na
    Int? limit
    String? input_file
  }
  command <<<
    vtools phenotype \
      ~{input_file} \
      ~{if (import_phenotype_tab) then "-f" else ""} \
      ~{if (set) then "--set" else ""} \
      ~{if (from_stat) then "--from_stat" else ""} \
      ~{if (list_outputted_sqlcompatibleexpressions) then "--output" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (limit_operation_use) then "-g" else ""} \
      ~{if (update_phenotype_samples) then "-s" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(na) then ("--na " +  '"' + na + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""}
  >>>
  parameter_meta {
    import_phenotype_tab: "[INPUT_FILE [INPUT_FILE ...]], --from_file [INPUT_FILE [INPUT_FILE ...]], --from-file [INPUT_FILE [INPUT_FILE ...]]\\nImport phenotype from a tab or space delimited file,\\nwhich can be standard input if a name - is specified.\\nSamples are determined by sample names in the first\\ncolumn, or jointly by sample name and filename if\\nthere is another column with header 'filename'. Names\\nof phenotype fields are determined by header of the\\ninput file, or by names provided from option --header.\\nNon-alphanumeric characters in input filed names will\\nbe replaced by '_'. If multiple samples in a project\\nshare the same names, they will shared the imported\\nphenotypes. Optionally, a list of phenotypes (columns\\nof the file) can be specified after filename, in which\\ncase only the specified phenotypes will be imported.\\nParameter --samples could be used to limit the samples\\nfor which phenotypes are imported. Values that match\\nvalue of parameter --na and cannot be converted to the\\nprobed type of phenotype (e.g. '' in a column of\\nnumbers) are recorded as missing values."
    set: "[EXPRESSION [EXPRESSION ...]]\\nSet a phenotype to a constant (e.g. --set aff=1), or\\nan expression using other existing phenotypes (e.g.\\n--set ratio_qt=high_qt/all_qt (the ratio of the number\\nof high quality variants to the number of all\\nvariants, where high_qt and all_qt are obtained from\\nsample statistics using parameter --from_stat).\\nParameter --samples could be used to limit the samples\\nfor which genotypes will be set."
    from_stat: "[EXPRESSION [EXPRESSION ...]], --from-stat [EXPRESSION [EXPRESSION ...]]\\nSet a phenotype to a summary statistics of a genotype\\nfield. For example, \\\"num=count(*)\\\" sets phenotype num\\nto be the number of genotypes of a sample,\\n\\\"GD=avg(DP)\\\" sets phenotype DP to be the average depth\\n(if DP is one of the genotype fields) of the sample.\\nMultiple fields (e.g. '--from-stat \\\"num=count(*)\\\"\\n\\\"GD=avg(DP)\\\"') are also allowed. In addition to\\nstandard SQL aggregation functions, variant tools\\nsupports special functions #(GT), #(wtGT), #(mutGT),\\n#(alt), #(hom), #(het) and #(other), which counts the\\nnumber of genotypes (the same as count(*)), wildtype\\ngenotypes, mutant genotypes alternative alleles,\\nhomozygotes, heterozygotes, and genotypes with two\\ndifferent alternative alleles. Parameters --genotypes\\nand --samples could be used to limit the genotypes to\\nbe considered and the samples for which genotypes will\\nbe set."
    list_outputted_sqlcompatibleexpressions: "[EXPRESSION [EXPRESSION ...]]\\nA list of phenotype to be outputted. SQL-compatible\\nexpressions or functions such as \\\"DP/DP_all\\\" and\\n\\\"avg(DP)\\\" are also allowed"
    jobs: "Allow at most N concurrent jobs to obtain sample\\nstatistics for parameter --from-stat."
    limit_operation_use: "[COND [COND ...]], --genotypes [COND [COND ...]]\\nLimit the operation to genotypes that match specified\\nconditions. Use 'vtools show genotypes' to list usable\\nfields for each sample."
    update_phenotype_samples: "[COND [COND ...]], --samples [COND [COND ...]]\\nUpdate phenotype for samples that match specified\\nconditions. Use 'vtools show samples' to list usable\\nfields in the sample table."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1)."
    header: "[HEADER [HEADER ...]]\\nA list of header names for input file if used with\\noption --from-file. Otherwise a complete header or a\\nlist of names that will be joined by a delimiter\\n(parameter --delimiter), for option --output. If a\\nspecial name - is specified, the header will be read\\nfrom the standard input, which is the preferred way to\\nspecify large multi-line headers (e.g. cat myheader |\\nvtools export --header -). If this parameter is given\\nwithout parameter, a default header will be derived\\nfrom field names."
    delimiter: "Delimiter, default to tab, a popular alternative is\\n',' for csv output"
    na: "Input or output string for missing value.."
    limit: "Number of record to display. Default to all record.\\n"
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}