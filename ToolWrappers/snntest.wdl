version 1.0

task Snntest {
  input {
    File? data_fasta_format
    File? data_format_used
    Boolean? read_mslike_data
    Array[String] number_pops_followed
    File? write_data_outfilename
    Int? pvalues_nperms_permutations
    Boolean? only_analyze_biallelic
  }
  command <<<
    snntest \
      ~{if defined(data_fasta_format) then ("-f " +  '"' + data_fasta_format + '"') else ""} \
      ~{if defined(data_format_used) then ("-s " +  '"' + data_format_used + '"') else ""} \
      ~{if (read_mslike_data) then "-m" else ""} \
      ~{if defined(number_pops_followed) then ("-c " +  '"' + number_pops_followed + '"') else ""} \
      ~{if defined(write_data_outfilename) then ("-o " +  '"' + write_data_outfilename + '"') else ""} \
      ~{if defined(pvalues_nperms_permutations) then ("-n " +  '"' + pvalues_nperms_permutations + '"') else ""} \
      ~{if (only_analyze_biallelic) then "-b" else ""}
  >>>
  parameter_meta {
    data_fasta_format: ": data are in fasta format in a file called filename\\nfurther options for fasta data:\\n-O outgroup : if there is an outgroup in the file, pass it the number (1 <= outgroup <= n)"
    data_format_used: ": data are in the format used for Hudson's (2001) programs"
    read_mslike_data: ": read ms-like data from stdin"
    number_pops_followed: ": the number of pops followed by list of sample sizes per pop"
    write_data_outfilename: ": write data to outfilename (defaults to writing to the screen)"
    pvalues_nperms_permutations: ": get p-values from nperms permutations of the data (default=10000)"
    only_analyze_biallelic: ": only analyze bi-allelic sites (only considers the ingroup!)"
  }
  output {
    File out_stdout = stdout()
    File out_write_data_outfilename = "${in_write_data_outfilename}"
  }
}