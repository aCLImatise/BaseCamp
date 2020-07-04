version 1.0

task Hisatgenotype.py {
  input {
    String? base_name
    String? region_list
    Boolean? fast_a
    String? filename_singleend_reads
    String? one
    String? two
    String? alignment_file
    String? threads
    String? num_edit_dist
    Boolean? assembly
    Boolean? local_database
    Boolean? verbose
    String? debug
  }
  command <<<
    hisatgenotype.py \
      ~{if defined(base_name) then ("--base-name " +  '"' + base_name + '"') else ""} \
      ~{if defined(region_list) then ("--region-list " +  '"' + region_list + '"') else ""} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(filename_singleend_reads) then ("-U " +  '"' + filename_singleend_reads + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(alignment_file) then ("--alignment-file " +  '"' + alignment_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(num_edit_dist) then ("--num-editdist " +  '"' + num_edit_dist + '"') else ""} \
      ~{true="--assembly" false="" assembly} \
      ~{true="--local-database" false="" local_database} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""}
  >>>
  parameter_meta {
    base_name: "base filename for genotype genome"
    region_list: "A comma-separated list of regions (default: empty)"
    fast_a: "FASTA file"
    filename_singleend_reads: "filename for single-end reads"
    one: "filename for paired-end reads"
    two: "filename for paired-end reads"
    alignment_file: "Sorted BAM alignment file name"
    threads: "Number of threads"
    num_edit_dist: "Maximum number of mismatches per read alignment to be considered (default: 2)"
    assembly: "Perform assembly"
    local_database: "Use local database"
    verbose: "also print some statistics to stderr"
    debug: "e.g., test_id:10,read_id:10000,basic_test"
  }
}