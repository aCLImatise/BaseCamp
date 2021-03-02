version 1.0

task EukHighConfidenceFilter {
  input {
    File? result
    File? ss
    Directory? directory_where_files
    File? prefix
    Boolean? remove
    Int? cm_score_one
    Int? ss_score_one
    Int? iso_score_one
    Int? iso_score_two
    Int? iso_max_score_two
    String e_uk_quality_filter
  }
  command <<<
    EukHighConfidenceFilter \
      ~{e_uk_quality_filter} \
      ~{if defined(result) then ("--result " +  '"' + result + '"') else ""} \
      ~{if defined(ss) then ("--ss " +  '"' + ss + '"') else ""} \
      ~{if defined(directory_where_files) then ("--output " +  '"' + directory_where_files + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (remove) then "--remove" else ""} \
      ~{if defined(cm_score_one) then ("--cmscore1 " +  '"' + cm_score_one + '"') else ""} \
      ~{if defined(ss_score_one) then ("--ssscore1 " +  '"' + ss_score_one + '"') else ""} \
      ~{if defined(iso_score_one) then ("--isoscore1 " +  '"' + iso_score_one + '"') else ""} \
      ~{if defined(iso_score_two) then ("--isoscore2 " +  '"' + iso_score_two + '"') else ""} \
      ~{if defined(iso_max_score_two) then ("--isomaxscore2 " +  '"' + iso_max_score_two + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0"
  }
  parameter_meta {
    result: "tRNAscan-SE output file used as input"
    ss: "tRNAscan-SE secondary structure file used as input"
    directory_where_files: "Directory where output files will be written"
    prefix: "Prefix for output file name"
    remove: "Remove filtered tRNA hits (default: filtered tRNA hits are only tagged)"
    cm_score_one: "Domain-specific model score cutoff for secondary filtering (default = 50; -1 if not used for filtering)"
    ss_score_one: "Secondary structure score cutoff for secondary filtering (default = 10; -1 if not used for filtering)"
    iso_score_one: "Isotype-specific model score cutoff for secondary filtering (default = 70; -1 if not used for filtering)"
    iso_score_two: "Isotype-specific model starting score cutoff for tertiary filtering (default = 70; -1 if not used for filtering)"
    iso_max_score_two: "Maximum isotype-specific model score cutoff for tertiary filtering (default = 95)"
    e_uk_quality_filter: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_where_files = "${in_directory_where_files}"
    File out_prefix = "${in_prefix}"
  }
}