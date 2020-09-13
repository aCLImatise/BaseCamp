version 1.0

task Unfazed {
  input {
    File? dn_ms
    File? sites
    File? ped
    Directory? bam_dir
    Boolean? bam_pairs
    Int? threads
    String? output_type
    Boolean? include_ambiguous
    Boolean? verbose
    File? outfile
    File? reference
    Boolean? v
  }
  command <<<
    unfazed \
      ~{if defined(dn_ms) then ("--dnms " +  '"' + dn_ms + '"') else ""} \
      ~{if defined(sites) then ("--sites " +  '"' + sites + '"') else ""} \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{if defined(bam_dir) then ("--bam-dir " +  '"' + bam_dir + '"') else ""} \
      ~{if (bam_pairs) then "--bam-pairs" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if (include_ambiguous) then "--include-ambiguous" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    dn_ms: "valid VCF OR BED file of the DNMs of interest> If BED,\\nmust contain chrom, start, end, kid_id, var_type\\ncolumns (default: None)"
    sites: "sorted/bgzipped/indexed VCF/BCF file of SNVs to\\nidentify informative sites. Must contain each kid and\\nboth parents (default: None)"
    ped: "ped file including the kid and both parent IDs\\n(default: None)"
    bam_dir: "directory where bam/cram files (named {sample_id}.bam\\nor {sample_id}.cram) are stored for offspring. If not\\nincluded, --bam-pairs must be set (default: None)"
    bam_pairs: "[BAM_PAIRS [BAM_PAIRS ...]]\\nspace-delimited list of pairs in the format\\n{sample_id}:{bam_path} where {sample_id} matches an\\noffspring id from the dnm file. Can be used with\\n--bam-dir arg, must be used in its absence (default:\\nNone)"
    threads: "number of threads to use (default: 2)"
    output_type: "choose output type. If --dnms is not a VCF/BCF, output\\nmust be to BED format. Defaults to match --dnms input\\nfile (default: None)"
    include_ambiguous: "include ambiguous phasing results (default: False)"
    verbose: "print verbose output including sites and reads used\\nfor phasing. Only applies to BED output (default:\\nFalse)"
    outfile: "name for output file. Defaults to stdout (default:\\n/dev/stdout)"
    reference: "reference fasta file (required for crams) (default:\\nNone)\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}