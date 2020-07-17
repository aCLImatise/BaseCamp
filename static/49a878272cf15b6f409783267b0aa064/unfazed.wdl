version 1.0

task Unfazed {
  input {
    String? dn_ms
    String? sites
    String? ped
    String? bam_dir
    Boolean? bam_pairs
    String? threads
    String? output_type
    Boolean? include_ambiguous
    Boolean? verbose
    String? outfile
    String? reference
    Boolean? v
  }
  command <<<
    unfazed \
      ~{if defined(dn_ms) then ("--dnms " +  '"' + dn_ms + '"') else ""} \
      ~{if defined(sites) then ("--sites " +  '"' + sites + '"') else ""} \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{if defined(bam_dir) then ("--bam-dir " +  '"' + bam_dir + '"') else ""} \
      ~{true="--bam-pairs" false="" bam_pairs} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{true="--include-ambiguous" false="" include_ambiguous} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    dn_ms: "valid VCF OR BED file of the DNMs of interest> If BED, must contain chrom, start, end, kid_id, var_type columns (default: None)"
    sites: "sorted/bgzipped/indexed VCF/BCF file of SNVs to identify informative sites. Must contain each kid and both parents (default: None)"
    ped: "ped file including the kid and both parent IDs (default: None)"
    bam_dir: "directory where bam/cram files (named {sample_id}.bam or {sample_id}.cram) are stored for offspring. If not included, --bam-pairs must be set (default: None)"
    bam_pairs: "[BAM_PAIRS [BAM_PAIRS ...]] space-delimited list of pairs in the format {sample_id}:{bam_path} where {sample_id} matches an offspring id from the dnm file. Can be used with --bam-dir arg, must be used in its absence (default: None)"
    threads: "number of threads to use (default: 2)"
    output_type: "choose output type. If --dnms is not a VCF/BCF, output must be to BED format. Defaults to match --dnms input file (default: None)"
    include_ambiguous: "include ambiguous phasing results (default: False)"
    verbose: "print verbose output including sites and reads used for phasing. Only applies to BED output (default: False)"
    outfile: "name for output file. Defaults to stdout (default: /dev/stdout)"
    reference: "reference fasta file (required for crams) (default: None)"
    v: ""
  }
}