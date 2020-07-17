version 1.0

task HisatgenotypeHlaCyp.py {
  input {
    String? exclude_allele_list
    String? num_mismatch
    Boolean? verbose
    String? debug
    Boolean? novel_allele_detection
    String? base
  }
  command <<<
    hisatgenotype_hla_cyp.py \
      ~{if defined(exclude_allele_list) then ("--exclude-allele-list " +  '"' + exclude_allele_list + '"') else ""} \
      ~{if defined(num_mismatch) then ("--num-mismatch " +  '"' + num_mismatch + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{true="--novel_allele_detection" false="" novel_allele_detection} \
      ~{if defined(base) then ("--base " +  '"' + base + '"') else ""}
  >>>
  parameter_meta {
    exclude_allele_list: "A comma-separated list of alleles to be excluded. Enter a number N to randomly select N alleles for exclusion and N non-excluded alleles for testing (2N tested in total)."
    num_mismatch: "Maximum number of mismatches per read alignment to be considered (default: 0)"
    verbose: "also print some statistics to stderr"
    debug: "e.g., test_id:10,read_id:10000,basic_test"
    novel_allele_detection: "Change test to detection of new alleles. Report sensitivity and specificity rate at the end."
    base: ""
  }
}