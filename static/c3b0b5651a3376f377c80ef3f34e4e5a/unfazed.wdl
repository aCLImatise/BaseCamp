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
    String? build
    Boolean? no_extended
    Int? multi_read_proc_min
    Boolean? quiet
    Int? min_gt_qual
    Int? min_depth
    Float? ab_hom_ref
    Float? ab_ho_malt
    Float? ab_het
    Int? evidence_min_ratio
    Int? search_dist
    Int? insert_size_max_sample
    Int? min_map_qual
    Int? stdev_s
    Int? read_len
    Int? split_error_margin
    Int? max_reads
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
      ~{if defined(build) then ("--build " +  '"' + build + '"') else ""} \
      ~{if (no_extended) then "--no-extended" else ""} \
      ~{if defined(multi_read_proc_min) then ("--multiread-proc-min " +  '"' + multi_read_proc_min + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(min_gt_qual) then ("--min-gt-qual " +  '"' + min_gt_qual + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(ab_hom_ref) then ("--ab-homref " +  '"' + ab_hom_ref + '"') else ""} \
      ~{if defined(ab_ho_malt) then ("--ab-homalt " +  '"' + ab_ho_malt + '"') else ""} \
      ~{if defined(ab_het) then ("--ab-het " +  '"' + ab_het + '"') else ""} \
      ~{if defined(evidence_min_ratio) then ("--evidence-min-ratio " +  '"' + evidence_min_ratio + '"') else ""} \
      ~{if defined(search_dist) then ("--search-dist " +  '"' + search_dist + '"') else ""} \
      ~{if defined(insert_size_max_sample) then ("--insert-size-max-sample " +  '"' + insert_size_max_sample + '"') else ""} \
      ~{if defined(min_map_qual) then ("--min-map-qual " +  '"' + min_map_qual + '"') else ""} \
      ~{if defined(stdev_s) then ("--stdevs " +  '"' + stdev_s + '"') else ""} \
      ~{if defined(read_len) then ("--readlen " +  '"' + read_len + '"') else ""} \
      ~{if defined(split_error_margin) then ("--split-error-margin " +  '"' + split_error_margin + '"') else ""} \
      ~{if defined(max_reads) then ("--max-reads " +  '"' + max_reads + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/unfazed:1.0.2--pyh3252c3a_0"
  }
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
    reference: "reference fasta file (required for crams) (default:\\nNone)"
    build: "human genome build, used to determine sex chromosome\\npseudoautosomal regions. If `na` option is chosen, sex\\nchromosomes will not be auto-phased. HG19/GRCh37\\ninterchangeable (default: None)"
    no_extended: "do not perform extended read-based phasing (default\\nTrue) (default: False)"
    multi_read_proc_min: "min number of variants required to perform multiple\\nparallel reads of the sites file (default: 1000)"
    quiet: "no logging of variant processing data (default: False)"
    min_gt_qual: "min genotype and base quality for informative sites\\n(default: 20)"
    min_depth: "min coverage for informative sites (default: 10)"
    ab_hom_ref: "allele balance range for homozygous reference\\ninformative sites (default: 0.0:0.2)"
    ab_ho_malt: "allele balance range for homozygous alternate\\ninformative sites (default: 0.8:1.0)"
    ab_het: "allele balance range for heterozygous informative\\nsites (default: 0.2:0.8)"
    evidence_min_ratio: "minimum ratio of evidence for a parent to provide an\\nunambiguous call. Default 10:1 (default: 10)"
    search_dist: "maximum search distance from variant for informative\\nsites (in bases) (default: 5000)"
    insert_size_max_sample: "maximum number of read inserts to sample in order to\\nestimate concordant read insert size (default:\\n1000000)"
    min_map_qual: "minimum map quality for reads (default: 1)"
    stdev_s: "number of standard deviations from the mean insert\\nlength to define a discordant read (default: 3)"
    read_len: "expected length of input reads (default: 151)"
    split_error_margin: "margin of error for the location of split read\\nclipping in bases (default: 5)"
    max_reads: "maximum number of reads to collect for phasing a\\nsingle variant (default: 100)\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}