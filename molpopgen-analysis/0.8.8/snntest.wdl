version 1.0

task Snntest {
  input {
    File? data_format_used
    Boolean? read_mslike_data
    Array[String] number_pops_followed
    String? write_data_outfilename
    String? get_pvalues_nperms
    Boolean? only_analyze_biallelic
  }
  command <<<
    snntest \
      ~{if defined(data_format_used) then ("-s " +  '"' + data_format_used + '"') else ""} \
      ~{true="-m" false="" read_mslike_data} \
      ~{if defined(number_pops_followed) then ("-c " +  '"' + number_pops_followed + '"') else ""} \
      ~{if defined(write_data_outfilename) then ("-o " +  '"' + write_data_outfilename + '"') else ""} \
      ~{if defined(get_pvalues_nperms) then ("-n " +  '"' + get_pvalues_nperms + '"') else ""} \
      ~{true="-b" false="" only_analyze_biallelic}
  >>>
  parameter_meta {
    data_format_used: ": data are in the format used for Hudson's (2001) programs"
    read_mslike_data: ": read ms-like data from stdin"
    number_pops_followed: ": the number of pops followed by list of sample sizes per pop"
    write_data_outfilename: ": write data to outfilename (defaults to writing to the screen)"
    get_pvalues_nperms: ": get p-values from nperms permutations of the data (default=10000)"
    only_analyze_biallelic: ": only analyze bi-allelic sites (only considers the ingroup!)"
  }
}