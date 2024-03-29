version 1.0

task Ngm {
  input {
    File? config
    File? reference
    Boolean? qry
    File? qry_one
    File? qry_two
    Boolean? paired
    Boolean? min_insert_size
    Boolean? max_insert_size
    Int? max_read_length
    Boolean? force_r_length_check
    File? path_output_file
    Boolean? top_n
    Boolean? strata
    Boolean? bam
    Boolean? keep_tags
    File? no_unal
    Boolean? hard_clip
    Boolean? silent_clip
    String? rg_id
    String? rg_sm
    String? rg_lb
    String? rg_pl
    String? rg_ds
    String? rg_dt
    String? rg_pu
    Int? rg_pi
    String? rg_pg
    String? rg_cn
    String? rg_fo
    String? rg_ks
    Int? pe_delimiter
    Int? threads
    Float? sensitivity
    Boolean? very_fast
    Boolean? fast
    Boolean? sensitive
    Boolean? very_sensitive
    Int? min_identity
    Float? min_residues
    Int? min_mq
    Boolean? gpu
    Boolean? bs_mapping
    Int? bs_cut_off
    Boolean? km_er
    Int? km_er_skip
    Int? km_er_min
    Int? max_cmrs
    Boolean? skip_save
    Boolean? local
    Boolean? end_to_end
    Boolean? affine
    Int? max_consec_indels
    Boolean? fast_pairing
    Int? pair_score_cut_off
    Boolean? skip_mate_check
    Int? match_bonus
    Int? mismatch
    Int? gap_read_penalty
    Int? gap_ref_penalty
    Int? gap_extend_penalty
    Int? match_bonus_tt
    Int? match_bonus_tc
    Int? bin_size
    Boolean? update_check
    Boolean? color
    Boolean? no_progress
  }
  command <<<
    ngm \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (qry) then "--qry" else ""} \
      ~{if defined(qry_one) then ("--qry1 " +  '"' + qry_one + '"') else ""} \
      ~{if defined(qry_two) then ("--qry2 " +  '"' + qry_two + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (min_insert_size) then "--min-insert-size" else ""} \
      ~{if (max_insert_size) then "--max-insert-size" else ""} \
      ~{if defined(max_read_length) then ("--max-read-length " +  '"' + max_read_length + '"') else ""} \
      ~{if (force_r_length_check) then "--force-rlength-check" else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if (top_n) then "--topn" else ""} \
      ~{if (strata) then "--strata" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (keep_tags) then "--keep-tags" else ""} \
      ~{if (no_unal) then "--no-unal" else ""} \
      ~{if (hard_clip) then "--hard-clip" else ""} \
      ~{if (silent_clip) then "--silent-clip" else ""} \
      ~{if defined(rg_id) then ("--rg-id " +  '"' + rg_id + '"') else ""} \
      ~{if defined(rg_sm) then ("--rg-sm " +  '"' + rg_sm + '"') else ""} \
      ~{if defined(rg_lb) then ("--rg-lb " +  '"' + rg_lb + '"') else ""} \
      ~{if defined(rg_pl) then ("--rg-pl " +  '"' + rg_pl + '"') else ""} \
      ~{if defined(rg_ds) then ("--rg-ds " +  '"' + rg_ds + '"') else ""} \
      ~{if defined(rg_dt) then ("--rg-dt " +  '"' + rg_dt + '"') else ""} \
      ~{if defined(rg_pu) then ("--rg-pu " +  '"' + rg_pu + '"') else ""} \
      ~{if defined(rg_pi) then ("--rg-pi " +  '"' + rg_pi + '"') else ""} \
      ~{if defined(rg_pg) then ("--rg-pg " +  '"' + rg_pg + '"') else ""} \
      ~{if defined(rg_cn) then ("--rg-cn " +  '"' + rg_cn + '"') else ""} \
      ~{if defined(rg_fo) then ("--rg-fo " +  '"' + rg_fo + '"') else ""} \
      ~{if defined(rg_ks) then ("--rg-ks " +  '"' + rg_ks + '"') else ""} \
      ~{if defined(pe_delimiter) then ("--pe-delimiter " +  '"' + pe_delimiter + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(sensitivity) then ("--sensitivity " +  '"' + sensitivity + '"') else ""} \
      ~{if (very_fast) then "--very-fast" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (very_sensitive) then "--very-sensitive" else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(min_residues) then ("--min-residues " +  '"' + min_residues + '"') else ""} \
      ~{if defined(min_mq) then ("--min-mq " +  '"' + min_mq + '"') else ""} \
      ~{if (gpu) then "--gpu" else ""} \
      ~{if (bs_mapping) then "--bs-mapping" else ""} \
      ~{if defined(bs_cut_off) then ("--bs-cutoff " +  '"' + bs_cut_off + '"') else ""} \
      ~{if (km_er) then "--kmer" else ""} \
      ~{if defined(km_er_skip) then ("--kmer-skip " +  '"' + km_er_skip + '"') else ""} \
      ~{if defined(km_er_min) then ("--kmer-min " +  '"' + km_er_min + '"') else ""} \
      ~{if defined(max_cmrs) then ("--max-cmrs " +  '"' + max_cmrs + '"') else ""} \
      ~{if (skip_save) then "--skip-save" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (end_to_end) then "--end-to-end" else ""} \
      ~{if (affine) then "--affine" else ""} \
      ~{if defined(max_consec_indels) then ("--max-consec-indels " +  '"' + max_consec_indels + '"') else ""} \
      ~{if (fast_pairing) then "--fast-pairing" else ""} \
      ~{if defined(pair_score_cut_off) then ("--pair-score-cutoff " +  '"' + pair_score_cut_off + '"') else ""} \
      ~{if (skip_mate_check) then "--skip-mate-check" else ""} \
      ~{if defined(match_bonus) then ("--match-bonus " +  '"' + match_bonus + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap_read_penalty) then ("--gap-read-penalty " +  '"' + gap_read_penalty + '"') else ""} \
      ~{if defined(gap_ref_penalty) then ("--gap-ref-penalty " +  '"' + gap_ref_penalty + '"') else ""} \
      ~{if defined(gap_extend_penalty) then ("--gap-extend-penalty " +  '"' + gap_extend_penalty + '"') else ""} \
      ~{if defined(match_bonus_tt) then ("--match-bonus-tt " +  '"' + match_bonus_tt + '"') else ""} \
      ~{if defined(match_bonus_tc) then ("--match-bonus-tc " +  '"' + match_bonus_tc + '"') else ""} \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""} \
      ~{if (update_check) then "--update-check" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (no_progress) then "--no-progress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Path to the config file. The config file contains\\nall advanced options. If this parameter is\\nomitted, default values will be used."
    reference: "Path to the reference genome\\n(format: FASTA, can be gzipped)."
    qry: "<path>              Path to the read file. If the file contains\\ninterleaved mates use -p/--paired."
    qry_one: "Path to the read file containing mates 1."
    qry_two: "Path to the read file containing mates 2.\\nValid input formats are: FASTA/Q (gzipped),\\nSAM/BAM. If the query file(s) is/are omitted,\\nNGM will only pre-process the reference."
    paired: "Input data is paired end.\\nNOT required if -1/-2 are used. (default: off)"
    min_insert_size: "The min insert size for paired end alignments\\n(default: 0)"
    max_insert_size: "The max insert size for paired end alignments\\n(default: 1000)"
    max_read_length: "Length of longest read in input.\\n(default: estimated from data)"
    force_r_length_check: "Forces NextgenMap to run through all reads to\\nfind the max. read length. (default: off)"
    path_output_file: "Path to output file."
    top_n: "Prints the <n> best alignments sorted by\\nalignment score (default: 1)"
    strata: "Only  output  the  highest  scoring  mappings\\nfor any  given  read,  up  to <n> mappings per\\nread. If a read has more than <n> mappings with\\nthe same score, it is discarded and reported\\nas unmapped."
    bam: "Output BAM instead of SAM."
    keep_tags: "Copy BAM/SAM tags present in input file to\\noutput file (default: off)"
    no_unal: "Don't print unaligned reads to output file."
    hard_clip: "Hard instead of soft clipping in SAM output"
    silent_clip: "Hard clip reads but don't add clipping\\ninformation to CIGAR string"
    rg_id: "Adds RG:Z:<string> to all alignments in SAM/BAM"
    rg_sm: "RG header: Sample"
    rg_lb: "RG header: Library"
    rg_pl: "RG header: Platform"
    rg_ds: "RG header: Description"
    rg_dt: "RG header: Date (format: YYYY-MM-DD)"
    rg_pu: "RG header: Platform unit"
    rg_pi: "RG header: Median insert size"
    rg_pg: "RG header: Programs"
    rg_cn: "RG header: sequencing center"
    rg_fo: "RG header: Flow order"
    rg_ks: "RG header: Key sequence"
    pe_delimiter: "Character used in suffix that identifies mate 1\\nand 2. E.g. /1 and /2. This suffixes will be\\nremoved to ensure proper SAM output\\n(default: /)"
    threads: "Number of candidate search threads"
    sensitivity: "A value between 0 and 1 that determines the\\nnumber of candidate mapping regions that will\\nbe evaluated with an sequence alignment.\\n0: all CMR(s) will be evaluated\\n1: only the best CMR(s) will be evaluated\\nHigher values will reduce the runtime but also\\nhave a negative effect on mapping sensitivity.\\n(default: estimated from input data)"
    very_fast: "Scale estimated sensitivity: Much faster, much less accurate"
    fast: "Scale estimated sensitivity: Faster, less accurate"
    sensitive: "Scale estimated sensitivity: More accurate, slower"
    very_sensitive: "Scale estimated sensitivity: Much more accurate, much slower"
    min_identity: "All reads mapped with an identity lower than\\nthis threshold will be reported as unmapped\\n(default: 0.65)"
    min_residues: "All reads mapped with lower than\\n<int> or <float> * read length residues\\nwill be reported as unmapped. (default: 0.5)"
    min_mq: "All reads mapped with lower than <int>\\nmapping quality will be reported as unmapped.\\n(default: 0)"
    gpu: "[int,...]            Use GPU(s) for alignment computation\\nNOTE: GPU Ids are zero-based!\\n-g or --gpu to use GPU\\n-g 1 or --gpu 1 to use GPU 1\\n-g 0,1 or --gpu 0,1 to use GPU 0 and 1\\nIf -g/--gpu is omitted, alignments will be\\ncomputed on the CPU (default)"
    bs_mapping: "Enables bisulfite mapping.\\nFor bs-mapping, kmer-skip will be applied to\\nthe reads instead of the reference sequence."
    bs_cut_off: "Max. number of Ts in a k-mer. All k-mers were\\nthe number of Ts is higher than <int> are\\nignored (default: 8)"
    km_er: "[10-14]             Kmer length in bases. (default: 13)"
    km_er_skip: "Number of k-mers to skip when building the\\nlookup table from the reference(default: 2)"
    km_er_min: "Minimal number of k-mer hits required to\\nconsider a region a CMR. (default: 0)"
    max_cmrs: "Reads that have more than <int> CMRs are\\nignored. (default: infinite)"
    skip_save: "Don't save index to disk. Saves disk space but\\nincreases runtime for larger genomes."
    local: "Perform local alignment. Ends might get clipped.\\n(default: on)"
    end_to_end: "Perform end-to-end alignment. No clipping.\\n(default: off)"
    affine: "Use alignment algorithms that support affine gap\\ncosts. This will give you better alignments for\\nlonger indels but will also increase the runtime.\\n(default: off)"
    max_consec_indels: "Maximum number of consecutive indels allowed.\\n(default: computed based on avg. read length)"
    fast_pairing: "Mates are mapped individually. If the best\\nalignments for the mates give a proper pair\\nthey are marked as paired in the output.\\nIf not they are reported as broken pair."
    pair_score_cut_off: "To find the best pairing all alignments of a\\nread that have a score in the range of:\\n[top score * pair-score-cutoff; top score]\\nare taken into account."
    skip_mate_check: "Don't check that both mates have the same name\\n(default: off)"
    match_bonus: "Match score\\n(default: 10, affine: 10, bs-mapping: 4)"
    mismatch: "<int>      Mismatch penalty\\n(default: 15, affine: 15, bs-mapping: 2)"
    gap_read_penalty: "Penalty for a gap in the read\\n(default: 20, affine: 33, bs-mapping: 10)"
    gap_ref_penalty: "Penalty for a gap in the reference\\n(default: 20, affine: 33, bs-mapping: 10)"
    gap_extend_penalty: "Penalty for extending a gap\\n(default: 20, affine: 3, bs-mapping: 10)"
    match_bonus_tt: "Only for bs-mapping (default: 4)"
    match_bonus_tc: "Only for bs-mapping (default: 4)"
    bin_size: "Sets the size of the grid NextgenMap uses\\nduring CMR search to: 2^n (default: 2)"
    update_check: "Perform an online check for a newer version of NGM"
    color: "Colored text output (default: off)"
    no_progress: "Don't print progress info while mapping\\n(default: off)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
    File out_no_unal = "${in_no_unal}"
  }
}