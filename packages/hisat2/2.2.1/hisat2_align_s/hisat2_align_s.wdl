version 1.0

task Hisat2aligns {
  input {
    Boolean? query_input_files_fastq
    Boolean? q_seq
    Boolean? query_input_files_multifasta
    Boolean? query_input_files_raw
    Boolean? m_m_r
    Int? skip
    Int? up_to
    Int? trim_five
    Int? trim_three
    Boolean? phred_three_three
    Boolean? phred_six_four
    Boolean? int_quals
    Int? no_repeat_index
    Int? n_ceil
    Boolean? ignore_quals
    Boolean? no_fw
    Boolean? norc
    Int? pen_can_splice
    Int? pen_non_can_splice
    Int? pen_can_intron_len
    Int? pen_non_can_intron_len
    Int? min_intron_len
    Int? max_intron_len
    File? known_splice_site_in_file
    File? novel_splice_site_outfile
    File? novel_splice_site_in_file
    Boolean? no_temp_splice_site
    Boolean? no_spliced_alignment
    String? rna_strand_ness
    Boolean? tmo
    Boolean? dta
    Boolean? dta_cufflinks
    Boolean? avoid_pseudogene
    Boolean? no_template_len_adjustment
    Int? mp
    Int? sp
    Boolean? no_soft_clip
    Int? np
    Int? rdg
    Int? rfg
    Int? max_seeds
    Boolean? all
    Boolean? repeat
    Int? mini_ns
    Int? max_ins
    String? fr
    Boolean? no_mixed
    Boolean? no_discordant
    Boolean? time
    File? summary_file
    Boolean? new_summary
    Boolean? quiet
    File? met_file
    Boolean? met_stderr
    Int? met
    Boolean? no_head
    Boolean? no_sq
    String? rg_id
    String? rg
    Boolean? omit_sec_seq
    Int? off_rate
    Int? threads
    Boolean? reorder
    Boolean? mm
    Boolean? qc_filter
    Int? seed
    String? non_deterministic
    Boolean? remove_chr_name
    Boolean? add_chr_name
    Int his_at_two_align
    Int ht_two_idx
    Int m_one
    Int m_two
    String var_73
    String var_74
    String specified
    File var_file
    String files
    String index
    String many
    File filename
    String for
    String times_dot
    String with
    String e_dot_gdot
    String var_85
    String prefix
    String unpaired
    String var_output
  }
  command <<<
    hisat2_align_s \
      ~{his_at_two_align} \
      ~{ht_two_idx} \
      ~{m_one} \
      ~{m_two} \
      ~{var_73} \
      ~{var_74} \
      ~{specified} \
      ~{var_file} \
      ~{files} \
      ~{index} \
      ~{many} \
      ~{filename} \
      ~{for} \
      ~{times_dot} \
      ~{with} \
      ~{e_dot_gdot} \
      ~{var_85} \
      ~{prefix} \
      ~{unpaired} \
      ~{var_output} \
      ~{if (query_input_files_fastq) then "-q" else ""} \
      ~{if (q_seq) then "--qseq" else ""} \
      ~{if (query_input_files_multifasta) then "-f" else ""} \
      ~{if (query_input_files_raw) then "-r" else ""} \
      ~{if (m_m_r) then "-c" else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(up_to) then ("--upto " +  '"' + up_to + '"') else ""} \
      ~{if defined(trim_five) then ("--trim5 " +  '"' + trim_five + '"') else ""} \
      ~{if defined(trim_three) then ("--trim3 " +  '"' + trim_three + '"') else ""} \
      ~{if (phred_three_three) then "--phred33" else ""} \
      ~{if (phred_six_four) then "--phred64" else ""} \
      ~{if (int_quals) then "--int-quals" else ""} \
      ~{if defined(no_repeat_index) then ("--no-repeat-index " +  '"' + no_repeat_index + '"') else ""} \
      ~{if defined(n_ceil) then ("--n-ceil " +  '"' + n_ceil + '"') else ""} \
      ~{if (ignore_quals) then "--ignore-quals" else ""} \
      ~{if (no_fw) then "--nofw" else ""} \
      ~{if (norc) then "--norc" else ""} \
      ~{if defined(pen_can_splice) then ("--pen-cansplice " +  '"' + pen_can_splice + '"') else ""} \
      ~{if defined(pen_non_can_splice) then ("--pen-noncansplice " +  '"' + pen_non_can_splice + '"') else ""} \
      ~{if defined(pen_can_intron_len) then ("--pen-canintronlen " +  '"' + pen_can_intron_len + '"') else ""} \
      ~{if defined(pen_non_can_intron_len) then ("--pen-noncanintronlen " +  '"' + pen_non_can_intron_len + '"') else ""} \
      ~{if defined(min_intron_len) then ("--min-intronlen " +  '"' + min_intron_len + '"') else ""} \
      ~{if defined(max_intron_len) then ("--max-intronlen " +  '"' + max_intron_len + '"') else ""} \
      ~{if defined(known_splice_site_in_file) then ("--known-splicesite-infile " +  '"' + known_splice_site_in_file + '"') else ""} \
      ~{if defined(novel_splice_site_outfile) then ("--novel-splicesite-outfile " +  '"' + novel_splice_site_outfile + '"') else ""} \
      ~{if defined(novel_splice_site_in_file) then ("--novel-splicesite-infile " +  '"' + novel_splice_site_in_file + '"') else ""} \
      ~{if (no_temp_splice_site) then "--no-temp-splicesite" else ""} \
      ~{if (no_spliced_alignment) then "--no-spliced-alignment" else ""} \
      ~{if defined(rna_strand_ness) then ("--rna-strandness " +  '"' + rna_strand_ness + '"') else ""} \
      ~{if (tmo) then "--tmo" else ""} \
      ~{if (dta) then "--dta" else ""} \
      ~{if (dta_cufflinks) then "--dta-cufflinks" else ""} \
      ~{if (avoid_pseudogene) then "--avoid-pseudogene" else ""} \
      ~{if (no_template_len_adjustment) then "--no-templatelen-adjustment" else ""} \
      ~{if defined(mp) then ("--mp " +  '"' + mp + '"') else ""} \
      ~{if defined(sp) then ("--sp " +  '"' + sp + '"') else ""} \
      ~{if (no_soft_clip) then "--no-softclip" else ""} \
      ~{if defined(np) then ("--np " +  '"' + np + '"') else ""} \
      ~{if defined(rdg) then ("--rdg " +  '"' + rdg + '"') else ""} \
      ~{if defined(rfg) then ("--rfg " +  '"' + rfg + '"') else ""} \
      ~{if defined(max_seeds) then ("--max-seeds " +  '"' + max_seeds + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if defined(mini_ns) then ("--minins " +  '"' + mini_ns + '"') else ""} \
      ~{if defined(max_ins) then ("--maxins " +  '"' + max_ins + '"') else ""} \
      ~{if defined(fr) then ("--fr " +  '"' + fr + '"') else ""} \
      ~{if (no_mixed) then "--no-mixed" else ""} \
      ~{if (no_discordant) then "--no-discordant" else ""} \
      ~{if (time) then "--time" else ""} \
      ~{if defined(summary_file) then ("--summary-file " +  '"' + summary_file + '"') else ""} \
      ~{if (new_summary) then "--new-summary" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(met_file) then ("--met-file " +  '"' + met_file + '"') else ""} \
      ~{if (met_stderr) then "--met-stderr" else ""} \
      ~{if defined(met) then ("--met " +  '"' + met + '"') else ""} \
      ~{if (no_head) then "--no-head" else ""} \
      ~{if (no_sq) then "--no-sq" else ""} \
      ~{if defined(rg_id) then ("--rg-id " +  '"' + rg_id + '"') else ""} \
      ~{if defined(rg) then ("--rg " +  '"' + rg + '"') else ""} \
      ~{if (omit_sec_seq) then "--omit-sec-seq" else ""} \
      ~{if defined(off_rate) then ("--offrate " +  '"' + off_rate + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (reorder) then "--reorder" else ""} \
      ~{if (mm) then "--mm" else ""} \
      ~{if (qc_filter) then "--qc-filter" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(non_deterministic) then ("--non-deterministic " +  '"' + non_deterministic + '"') else ""} \
      ~{if (remove_chr_name) then "--remove-chrname" else ""} \
      ~{if (add_chr_name) then "--add-chrname" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hisat2:2.2.1--he1b5a44_1"
  }
  parameter_meta {
    query_input_files_fastq: "query input files are FASTQ .fq/.fastq (default)"
    q_seq: "query input files are in Illumina's qseq format"
    query_input_files_multifasta: "query input files are (multi-)FASTA .fa/.mfa"
    query_input_files_raw: "query input files are raw one-sequence-per-line"
    m_m_r: "<m1>, <m2>, <r> are sequences themselves, not files"
    skip: "skip the first <int> reads/pairs in the input (none)"
    up_to: "stop after first <int> reads/pairs (no limit)"
    trim_five: "trim <int> bases from 5'/left end of reads (0)"
    trim_three: "trim <int> bases from 3'/right end of reads (0)"
    phred_three_three: "qualities are Phred+33 (default)"
    phred_six_four: "qualities are Phred+64"
    int_quals: "qualities encoded as space-delimited integers"
    no_repeat_index: ",0,-0.5"
    n_ceil: "func for max # non-A/C/G/Ts permitted in aln (L,0,0.15)"
    ignore_quals: "treat all quality values as 30 on Phred scale (off)"
    no_fw: "do not align forward (original) version of read (off)"
    norc: "do not align reverse-complement version of read (off)"
    pen_can_splice: "penalty for a canonical splice site (0)"
    pen_non_can_splice: "penalty for a non-canonical splice site (12)"
    pen_can_intron_len: "penalty for long introns (G,-8,1) with canonical splice sites"
    pen_non_can_intron_len: "penalty for long introns (G,-8,1) with noncanonical splice sites"
    min_intron_len: "minimum intron length (20)"
    max_intron_len: "maximum intron length (500000)"
    known_splice_site_in_file: "provide a list of known splice sites"
    novel_splice_site_outfile: "report a list of splice sites"
    novel_splice_site_in_file: "provide a list of novel splice sites"
    no_temp_splice_site: "disable the use of splice sites found"
    no_spliced_alignment: "disable spliced alignment"
    rna_strand_ness: "specify strand-specific information (unstranded)"
    tmo: "reports only those alignments within known transcriptome"
    dta: "reports alignments tailored for transcript assemblers"
    dta_cufflinks: "reports alignments tailored specifically for cufflinks"
    avoid_pseudogene: "tries to avoid aligning reads to pseudogenes (experimental option)"
    no_template_len_adjustment: "disables template length adjustment for RNA-seq reads"
    mp: ",<int>   max and min penalties for mismatch; lower qual = lower penalty <6,2>"
    sp: ",<int>   max and min penalties for soft-clipping; lower qual = lower penalty <2,1>"
    no_soft_clip: "no soft-clipping"
    np: "penalty for non-A/C/G/Ts in read/ref (1)"
    rdg: ",<int>  read gap open, extend penalties (5,3)"
    rfg: ",<int>  reference gap open, extend penalties (5,3)"
    max_seeds: "HISAT2, like other aligners, uses seed-and-extend approaches. HISAT2 tries to extend seeds to\\nfull-length alignments. In HISAT2, --max-seeds is used to control the maximum number of seeds that\\nwill be extended. For DNA-read alignment (--no-spliced-alignment), HISAT2 extends up to these many seeds\\nand skips the rest of the seeds. For RNA-read alignment, HISAT2 skips extending seeds and reports\\nno alignments if the number of seeds is larger than the number specified with the option,\\nto be compatible with previous versions of HISAT2. Large values for --max-seeds may improve alignment\\nsensitivity, but HISAT2 is not designed with large values for --max-seeds in mind, and when aligning\\nreads to long, repetitive genomes, large --max-seeds could make alignment much slower.\\nThe default value is the maximum of 5 and the value that comes with -k times 2."
    all: "HISAT2 reports all alignments it can find. Using the option is equivalent to using both --max-seeds\\nand -k with the maximum value that a 64-bit signed integer can represent (9,223,372,036,854,775,807)."
    repeat: "report alignments to repeat sequences directly"
    mini_ns: "minimum fragment length (0), only valid with --no-spliced-alignment"
    max_ins: "maximum fragment length (500), only valid with --no-spliced-alignment"
    fr: "align fw/rev, rev/fw, fw/fw (--fr)"
    no_mixed: "suppress unpaired alignments for paired reads"
    no_discordant: "suppress discordant alignments for paired reads"
    time: "print wall-clock time taken by search phases"
    summary_file: "print alignment summary to this file."
    new_summary: "print alignment summary in a new style, which is more machine-friendly."
    quiet: "print nothing to stderr except serious errors"
    met_file: "send metrics to file at <path> (off)"
    met_stderr: "send metrics to stderr (off)"
    met: "report internal counters & metrics every <int> secs (1)"
    no_head: "suppress header lines, i.e. lines starting with @"
    no_sq: "suppress @SQ header lines"
    rg_id: "set read group id, reflected in @RG line and RG:Z: opt field"
    rg: "add <text> (\\\"lab:value\\\") to @RG line of SAM header.\\nNote: @RG line only printed when --rg-id is set."
    omit_sec_seq: "put '*' in SEQ and QUAL fields for secondary alignments."
    off_rate: "override offrate of index; must be >= index's offrate"
    threads: "number of alignment threads to launch (1)"
    reorder: "force SAM output order to match order of input reads"
    mm: "use memory-mapped I/O for index; many 'hisat2's can share"
    qc_filter: "filter out reads that are bad according to QSEQ filter"
    seed: "seed for random number generator (0)"
    non_deterministic: "rand. gen. arbitrarily instead of using read attributes"
    remove_chr_name: "remove 'chr' from reference names in alignment"
    add_chr_name: "add 'chr' to reference names in alignment"
    his_at_two_align: ""
    ht_two_idx: ""
    m_one: ""
    m_two: ""
    var_73: ""
    var_74: ""
    specified: ""
    var_file: ""
    files: ""
    index: ""
    many: ""
    filename: ""
    for: ""
    times_dot: ""
    with: ""
    e_dot_gdot: ""
    var_85: ""
    prefix: ""
    unpaired: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}