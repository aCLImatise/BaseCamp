version 1.0

task Hisatgenotypepy {
  input {
    File? base_name
    String? region_list
    Boolean? fast_a
    File? filename_singleend_reads
    Int? one
    Int? two
    File? alignment_file
    Int? threads
    Int? num_edit_dist
    Boolean? assembly
    Boolean? local_database
    Boolean? verbose
    Int? debug
  }
  command <<<
    hisatgenotype_py \
      ~{if defined(base_name) then ("--base-name " +  '"' + base_name + '"') else ""} \
      ~{if defined(region_list) then ("--region-list " +  '"' + region_list + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(filename_singleend_reads) then ("-U " +  '"' + filename_singleend_reads + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(alignment_file) then ("--alignment-file " +  '"' + alignment_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(num_edit_dist) then ("--num-editdist " +  '"' + num_edit_dist + '"') else ""} \
      ~{if (assembly) then "--assembly" else ""} \
      ~{if (local_database) then "--local-database" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
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
    num_edit_dist: "Maximum number of mismatches per read alignment to be\\nconsidered (default: 2)"
    assembly: "Perform assembly"
    local_database: "Use local database"
    verbose: "also print some statistics to stderr"
    debug: "e.g., test_id:10,read_id:10000,basic_test"
  }
  output {
    File out_stdout = stdout()
  }
}