version 1.0

task MimoddVcffilter {
  input {
    File? ofile
    Array[String] samples
    Array[String] gt
    Array[String] dp
    Array[String] gq
    String? af
    Boolean? keep_only_variants
    Boolean? no_indels
    Boolean? indels_only
    Array[String] v_filter
    String input_file
  }
  command <<<
    mimodd vcf_filter \
      ~{input_file} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(gt) then ("--gt " +  '"' + gt + '"') else ""} \
      ~{if defined(dp) then ("--dp " +  '"' + dp + '"') else ""} \
      ~{if defined(gq) then ("--gq " +  '"' + gq + '"') else ""} \
      ~{if defined(af) then ("--af " +  '"' + af + '"') else ""} \
      ~{if (keep_only_variants) then "-r" else ""} \
      ~{if (no_indels) then "--no-indels" else ""} \
      ~{if (indels_only) then "--indels-only" else ""} \
      ~{if defined(v_filter) then ("--vfilter " +  '"' + v_filter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ofile: "redirect the output to the specified file (default:\\nstdout)"
    samples: "one or more sample names that the sample-specific\\nfilters --gt, --dp, and --gq should work on."
    gt: "genotype patterns (one per sample, use ANY to skip the\\nrequirement for a given sample) to be included in the\\noutput; format: x/x where x = 0 and x = 1 stand for\\nthe reference and the variant allele, respectively;\\nmultiple allowed genotypes for a sample can be\\nspecified as a comma-separated list"
    dp: "minimal coverage (one per sample, use 0 to skip the\\nrequirement for a given sample) required to include a\\nsite in the output"
    gq: "minimal genotype quality (one per sample, use 0 to\\nskip the requirement for a given sample) required to\\ninclude a site in the output"
    af: "#:MIN_FRACTION:MAX_FRACTION [ALLELE#:MIN_FRACTION:MAX_FRACTION ...]\\nthe fraction of reads supporting a specific ALLELE#\\nmust be between MIN_FRACTION and MAX_FRACTION to\\ninclude the site in the output"
    keep_only_variants: "[REGION_FILTER [REGION_FILTER ...]], --region [REGION_FILTER [REGION_FILTER ...]]\\nkeep only variants that fall in one of the given\\nchromsomal regions (specified in the format\\nCHROM:START-STOP or CHROM: for a whole chromosome)"
    no_indels: "skip indels in the output"
    indels_only: "keep only indels in the output"
    v_filter: "vertical sample names filter; if given, only sample\\ncolumns specified by name will be retained in the\\noutput"
    input_file: "a vcf input file (default: stdin)"
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}