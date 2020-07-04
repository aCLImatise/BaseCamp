version 1.0

task HisatgenotypeLocusSamples.py {
  input {
    String? reference_type
    String? region_list
    String? read_dir
    String? num_edit_dist
    String? threads
    Boolean? assembly
    Int? max_sample
    String? out_dir
    Boolean? verbose
    Boolean? platinum_check
  }
  command <<<
    hisatgenotype_locus_samples.py \
      ~{if defined(reference_type) then ("--reference-type " +  '"' + reference_type + '"') else ""} \
      ~{if defined(region_list) then ("--region-list " +  '"' + region_list + '"') else ""} \
      ~{if defined(read_dir) then ("--read-dir " +  '"' + read_dir + '"') else ""} \
      ~{if defined(num_edit_dist) then ("--num-editdist " +  '"' + num_edit_dist + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--assembly" false="" assembly} \
      ~{if defined(max_sample) then ("--max-sample " +  '"' + max_sample + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--platinum-check" false="" platinum_check}
  >>>
  parameter_meta {
    reference_type: "Reference type: gene, chromosome, and genome (default: gene)"
    region_list: "A comma-separated list of regions (default: empty)"
    read_dir: "read directory (e.g. read_input)"
    num_edit_dist: "Maximum number of mismatches per read alignment to be considered (default: 2)"
    threads: "Number of threads"
    assembly: "Perform assembly"
    max_sample: "Number of samples to be analyzed (default: sys.maxint)"
    out_dir: "Output directory (default: (empty))"
    verbose: "also print some statistics to stderr"
    platinum_check: "Check for concordance of platinum genomes"
  }
}