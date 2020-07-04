version 1.0

task Gmap.sse42 {
  input {
    Directory? dir
    String? db
    Int? km_er
    Int? sampling
    File? gs_eg
    Boolean? self_align
    Boolean? pair_align
    String? cmdline
    Int? part
    Int? input_buffer_size
    Int? use_shared_memory
    Boolean? no_splicing
    Int? min_intron_length
    Int? max_intron_length_middle
    Int? max_intron_length_ends
    Boolean? split_large_introns
    Int? trim_end_exons
    Int? local_splice_dist
    Int? total_length
    Int? chimera_margin
    Boolean? no_chimeras
    Int? n_threads
    String? chr_subset
    String? direction
    Int? canonical_mode
    Boolean? cross_species
    Int? allow_close_indels
    Float? micro_exon_splice_prob
    String? c_met_dir
    String? atoi_dir
    String? mode
    Boolean? prune_level
    Boolean? summary
    Boolean? align
    Boolean? continuous
    Boolean? continuous_by_exon
    Boolean? compress
    String? exons
    Boolean? protein_dna
    Boolean? protein_gen
    Int? format
    Int? n_paths
    Float? suboptimal_score
    Boolean? ordered
    Boolean? md_five
    Boolean? chimera_overlap
    Boolean? fails_only
    Boolean? no_fails
    String? snps_dir
    String? use_snps
    String? split_output
    String? failed_input
    Boolean? append_output
    Int? output_buffer_size
    Int? translation_code
    Boolean? alt_start_codons
    Boolean? full_length
    Int? cds_start
    Boolean? truncate
    Boolean? tolerant
    Int? gff_three_add_separators
    Int? gff_three_swap_phase
    Int? gff_three_fast_a_annotation
    String? gff_three_cds
    Boolean? no_sam_headers
    Boolean? sam_use_zero_m
    Boolean? sam_extended_cigar
    Boolean? force_xs_dir
    Boolean? md_lowercase_snp
    Boolean? action_if_cigar_error
    String? read_group_id
    String? read_group_name
    String? read_group_library
    String? read_group_platform
    String? quality_protocol
    Int? quality_print_shift
    Directory? map_dir
    String? map_file_argument
    Boolean? map_exons
    Boolean? map_both
    Int? flanking
    Boolean? print_comment
    Boolean? no_lengths
    Int? invert_mode
    Int? intron_gap
    Int? wrap_length
    Float? min_trimmed_coverage
    Float? min_identity
    Boolean? check
    String allocate_allocate_same
  }
  command <<<
    gmap.sse42 \
      ~{allocate_allocate_same} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(sampling) then ("--sampling " +  '"' + sampling + '"') else ""} \
      ~{if defined(gs_eg) then ("--gseg " +  '"' + gs_eg + '"') else ""} \
      ~{true="--selfalign" false="" self_align} \
      ~{true="--pairalign" false="" pair_align} \
      ~{if defined(cmdline) then ("--cmdline " +  '"' + cmdline + '"') else ""} \
      ~{if defined(part) then ("--part " +  '"' + part + '"') else ""} \
      ~{if defined(input_buffer_size) then ("--input-buffer-size " +  '"' + input_buffer_size + '"') else ""} \
      ~{if defined(use_shared_memory) then ("--use-shared-memory " +  '"' + use_shared_memory + '"') else ""} \
      ~{true="--nosplicing" false="" no_splicing} \
      ~{if defined(min_intron_length) then ("--min-intronlength " +  '"' + min_intron_length + '"') else ""} \
      ~{if defined(max_intron_length_middle) then ("--max-intronlength-middle " +  '"' + max_intron_length_middle + '"') else ""} \
      ~{if defined(max_intron_length_ends) then ("--max-intronlength-ends " +  '"' + max_intron_length_ends + '"') else ""} \
      ~{true="--split-large-introns" false="" split_large_introns} \
      ~{if defined(trim_end_exons) then ("--trim-end-exons " +  '"' + trim_end_exons + '"') else ""} \
      ~{if defined(local_splice_dist) then ("--localsplicedist " +  '"' + local_splice_dist + '"') else ""} \
      ~{if defined(total_length) then ("--totallength " +  '"' + total_length + '"') else ""} \
      ~{if defined(chimera_margin) then ("--chimera-margin " +  '"' + chimera_margin + '"') else ""} \
      ~{true="--no-chimeras" false="" no_chimeras} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(chr_subset) then ("--chrsubset " +  '"' + chr_subset + '"') else ""} \
      ~{if defined(direction) then ("--direction " +  '"' + direction + '"') else ""} \
      ~{if defined(canonical_mode) then ("--canonical-mode " +  '"' + canonical_mode + '"') else ""} \
      ~{true="--cross-species" false="" cross_species} \
      ~{if defined(allow_close_indels) then ("--allow-close-indels " +  '"' + allow_close_indels + '"') else ""} \
      ~{if defined(micro_exon_splice_prob) then ("--microexon-spliceprob " +  '"' + micro_exon_splice_prob + '"') else ""} \
      ~{if defined(c_met_dir) then ("--cmetdir " +  '"' + c_met_dir + '"') else ""} \
      ~{if defined(atoi_dir) then ("--atoidir " +  '"' + atoi_dir + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{true="--prunelevel" false="" prune_level} \
      ~{true="--summary" false="" summary} \
      ~{true="--align" false="" align} \
      ~{true="--continuous" false="" continuous} \
      ~{true="--continuous-by-exon" false="" continuous_by_exon} \
      ~{true="--compress" false="" compress} \
      ~{if defined(exons) then ("--exons " +  '"' + exons + '"') else ""} \
      ~{true="--protein_dna" false="" protein_dna} \
      ~{true="--protein_gen" false="" protein_gen} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(n_paths) then ("--npaths " +  '"' + n_paths + '"') else ""} \
      ~{if defined(suboptimal_score) then ("--suboptimal-score " +  '"' + suboptimal_score + '"') else ""} \
      ~{true="--ordered" false="" ordered} \
      ~{true="--md5" false="" md_five} \
      ~{true="--chimera-overlap" false="" chimera_overlap} \
      ~{true="--failsonly" false="" fails_only} \
      ~{true="--nofails" false="" no_fails} \
      ~{if defined(snps_dir) then ("--snpsdir " +  '"' + snps_dir + '"') else ""} \
      ~{if defined(use_snps) then ("--use-snps " +  '"' + use_snps + '"') else ""} \
      ~{if defined(split_output) then ("--split-output " +  '"' + split_output + '"') else ""} \
      ~{if defined(failed_input) then ("--failed-input " +  '"' + failed_input + '"') else ""} \
      ~{true="--append-output" false="" append_output} \
      ~{if defined(output_buffer_size) then ("--output-buffer-size " +  '"' + output_buffer_size + '"') else ""} \
      ~{if defined(translation_code) then ("--translation-code " +  '"' + translation_code + '"') else ""} \
      ~{true="--alt-start-codons" false="" alt_start_codons} \
      ~{true="--fulllength" false="" full_length} \
      ~{if defined(cds_start) then ("--cdsstart " +  '"' + cds_start + '"') else ""} \
      ~{true="--truncate" false="" truncate} \
      ~{true="--tolerant" false="" tolerant} \
      ~{if defined(gff_three_add_separators) then ("--gff3-add-separators " +  '"' + gff_three_add_separators + '"') else ""} \
      ~{if defined(gff_three_swap_phase) then ("--gff3-swap-phase " +  '"' + gff_three_swap_phase + '"') else ""} \
      ~{if defined(gff_three_fast_a_annotation) then ("--gff3-fasta-annotation " +  '"' + gff_three_fast_a_annotation + '"') else ""} \
      ~{if defined(gff_three_cds) then ("--gff3-cds " +  '"' + gff_three_cds + '"') else ""} \
      ~{true="--no-sam-headers" false="" no_sam_headers} \
      ~{true="--sam-use-0M" false="" sam_use_zero_m} \
      ~{true="--sam-extended-cigar" false="" sam_extended_cigar} \
      ~{true="--force-xs-dir" false="" force_xs_dir} \
      ~{true="--md-lowercase-snp" false="" md_lowercase_snp} \
      ~{true="--action-if-cigar-error" false="" action_if_cigar_error} \
      ~{if defined(read_group_id) then ("--read-group-id " +  '"' + read_group_id + '"') else ""} \
      ~{if defined(read_group_name) then ("--read-group-name " +  '"' + read_group_name + '"') else ""} \
      ~{if defined(read_group_library) then ("--read-group-library " +  '"' + read_group_library + '"') else ""} \
      ~{if defined(read_group_platform) then ("--read-group-platform " +  '"' + read_group_platform + '"') else ""} \
      ~{if defined(quality_protocol) then ("--quality-protocol " +  '"' + quality_protocol + '"') else ""} \
      ~{if defined(quality_print_shift) then ("--quality-print-shift " +  '"' + quality_print_shift + '"') else ""} \
      ~{if defined(map_dir) then ("--mapdir " +  '"' + map_dir + '"') else ""} \
      ~{if defined(map_file_argument) then ("--map " +  '"' + map_file_argument + '"') else ""} \
      ~{true="--mapexons" false="" map_exons} \
      ~{true="--mapboth" false="" map_both} \
      ~{if defined(flanking) then ("--flanking " +  '"' + flanking + '"') else ""} \
      ~{true="--print-comment" false="" print_comment} \
      ~{true="--nolengths" false="" no_lengths} \
      ~{if defined(invert_mode) then ("--invertmode " +  '"' + invert_mode + '"') else ""} \
      ~{if defined(intron_gap) then ("--introngap " +  '"' + intron_gap + '"') else ""} \
      ~{if defined(wrap_length) then ("--wraplength " +  '"' + wrap_length + '"') else ""} \
      ~{if defined(min_trimmed_coverage) then ("--min-trimmed-coverage " +  '"' + min_trimmed_coverage + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{true="--check" false="" check}
  >>>
  parameter_meta {
    dir: "Genome directory.  Default (as specified by --with-gmapdb to the configure program) is /tmp/tmpu5a6ivvl/share"
    db: "Genome database.  If argument is '?' (with the quotes), this command lists available databases."
    km_er: "kmer size to use in genome database (allowed values: 16 or less). If not specified, the program will find the highest available kmer size in the genome database"
    sampling: "Sampling to use in genome database.  If not specified, the program will find the smallest available sampling value in the genome database within selected k-mer size"
    gs_eg: "User-supplied genomic segment"
    self_align: "Align one sequence against itself in FASTA format via stdin (Useful for getting protein translation of a nucleotide sequence)"
    pair_align: "Align two sequences in FASTA format via stdin, first one being genomic and second one being cDNA"
    cmdline: ",STRING        Align these two sequences provided on the command line, first one being genomic and second one being cDNA"
    part: "Process only the i-th out of every n sequences e.g., 0/100 or 99/100 (useful for distributing jobs to a computer farm)."
    input_buffer_size: "Size of input buffer (program reads this many sequences at a time for efficiency) (default 1000)"
    use_shared_memory: "If 1, then allocated memory is shared among all processes on this node If 0 (default), then each process has private allocated memory"
    no_splicing: "Turns off splicing (useful for aligning genomic sequences onto a genome)"
    min_intron_length: "Min length for one internal intron (default 9).  Below this size, a genomic gap will be considered a deletion rather than an intron."
    max_intron_length_middle: "Max length for one internal intron (default 500000).  Note: for backward compatibility, the -K or --intronlength flag will set both --max-intronlength-middle and --max-intronlength-ends. Also see --split-large-introns below."
    max_intron_length_ends: "Max length for first or last intron (default 10000).  Note: for backward compatibility, the -K or --intronlength flag will set both --max-intronlength-middle and --max-intronlength-ends."
    split_large_introns: "Sometimes GMAP will exceed the value for --max-intronlength-middle, if it finds a good single alignment.  However, you can force GMAP to split such alignments by using this flag"
    trim_end_exons: "Trim end exons with fewer than given number of matches (in nt, default 12)"
    local_splice_dist: "Max length for known splice sites at ends of sequence (default 2000000)"
    total_length: "Max total intron length (default 2400000)"
    chimera_margin: "Amount of unaligned sequence that triggers search for the remaining sequence (default 30). Enables alignment of chimeric reads, and may help with some non-chimeric reads.  To turn off, set to zero."
    no_chimeras: "Turns off finding of chimeras.  Same effect as --chimera-margin=0"
    n_threads: "Number of worker threads"
    chr_subset: "Limit search to given chromosome"
    direction: "cDNA direction (sense_force, antisense_force, sense_filter, antisense_filter,or auto (default))"
    canonical_mode: "Reward for canonical and semi-canonical introns 0=low reward, 1=high reward (default), 2=low reward for high-identity sequences and high reward otherwise"
    cross_species: "Use a more sensitive search for canonical splicing, which helps especially for cross-species alignments and other difficult cases"
    allow_close_indels: "Allow an insertion and deletion close to each other (0=no, 1=yes (default), 2=only for high-quality alignments)"
    micro_exon_splice_prob: "Allow microexons only if one of the splice site probabilities is greater than this value (default 0.95)"
    c_met_dir: "Directory for methylcytosine index files (created using cmetindex) (default is location of genome index files specified using -D, -V, and -d)"
    atoi_dir: "Directory for A-to-I RNA editing index files (created using atoiindex) (default is location of genome index files specified using -D, -V, and -d)"
    mode: "Alignment mode: standard (default), cmet-stranded, cmet-nonstranded, atoi-stranded, atoi-nonstranded, ttoc-stranded, or ttoc-nonstranded. Non-standard modes requires you to have previously run the cmetindex or atoiindex programs (which also cover the ttoc modes) on the genome"
    prune_level: "Pruning level: 0=no pruning (default), 1=poor seqs, 2=repetitive seqs, 3=poor and repetitive"
    summary: "Show summary of alignments only"
    align: "Show alignments"
    continuous: "Show alignment in three continuous lines"
    continuous_by_exon: "Show alignment in three lines per exon"
    compress: "Print output in compressed format"
    exons: "Print exons (\"cdna\" or \"genomic\") Will also print introns with \"cdna+introns\" or \"genomic+introns\""
    protein_dna: "Print protein sequence (cDNA)"
    protein_gen: "Print protein sequence (genomic)"
    format: "Other format for output (also note the -A and -S options and other options listed under Output types): mask_introns, mask_utr_introns, psl (or 1) = PSL (BLAT) format, gff3_gene (or 2) = GFF3 gene format, gff3_match_cdna (or 3) = GFF3 cDNA_match format, gff3_match_est (or 4) = GFF3 EST_match format, splicesites (or 6) = splicesites output (for GSNAP splicing file), introns = introns output (for GSNAP splicing file), map_exons (or 7) = IIT FASTA exon map format, map_ranges (or 8) = IIT FASTA range map format, coords (or 9) = coords in table format, sampe = SAM format (setting paired_read bit in flag), samse = SAM format (without setting paired_read bit), bedpe = indels and gaps in BEDPE format"
    n_paths: "Maximum number of paths to show (default 5).  If set to 1, GMAP will not report chimeric alignments, since those imply two paths.  If you want a single alignment plus chimeric alignments, then set this to be 0."
    suboptimal_score: "Report only paths whose score is within this value of the best path. If specified between 0.0 and 1.0, then treated as a fraction of the score of the best alignment (matches minus penalties for mismatches and indels).  Otherwise, treated as an integer number to be subtracted from the score of the best alignment. Default value is 0.50."
    ordered: "Print output in same order as input (relevant only if there is more than one worker thread)"
    md_five: "Print MD5 checksum for each query sequence"
    chimera_overlap: "Overlap to show, if any, at chimera breakpoint"
    fails_only: "Print only failed alignments, those with no results"
    no_fails: "Exclude printing of failed alignments"
    snps_dir: "Directory for SNPs index files (created using snpindex) (default is location of genome index files specified using -D and -d)"
    use_snps: "Use database containing known SNPs (in <STRING>.iit, built previously using snpindex) for tolerance to SNPs"
    split_output: "Basename for multiple-file output, separately for nomapping, uniq, mult, (and chimera, if --chimera-margin is selected)"
    failed_input: "Print completely failed alignments as input FASTA or FASTQ format to the given file.  If the --split-output flag is also given, this file is generated in addition to the output in the .nomapping file."
    append_output: "When --split-output or --failedinput is given, this flag will append output to the existing files.  Otherwise, the default is to create new files."
    output_buffer_size: "Buffer size, in queries, for output thread (default 1000).  When the number of results to be printed exceeds this size, the worker threads are halted until the backlog is cleared"
    translation_code: "Genetic code used for translating codons to amino acids and computing CDS Integer value (default=1) corresponds to an available code at http://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi"
    alt_start_codons: "Also, use the alternate initiation codons shown in the above Web site By default, without this option, only ATG is considered an initiation codon"
    full_length: "Assume full-length protein, starting with Met"
    cds_start: "Translate codons from given nucleotide (1-based)"
    truncate: "Truncate alignment around full-length protein, Met to Stop Implies -F flag."
    tolerant: "Translates cDNA with corrections for frameshifts"
    gff_three_add_separators: "Whether to add a ### separator after each query sequence Values: 0 (no), 1 (yes, default)"
    gff_three_swap_phase: "Whether to swap phase (0 => 0, 1 => 2, 2 => 1) in gff3_gene format Needed by some analysis programs, but deviates from GFF3 specification Values: 0 (no, default), 1 (yes)"
    gff_three_fast_a_annotation: "Whether to include annotation from the FASTA header into the GFF3 output Values: 0 (default): Do not include 1: Wrap all annotation as Annot=\"<header>\" 2: Include key=value pairs, replacing brackets with quotation marks and replacing spaces between key=value pairs with semicolons"
    gff_three_cds: "Whether to use cDNA or genomic translation for the CDS coordinates Values: cdna (default), genomic"
    no_sam_headers: "Do not print headers beginning with '@'"
    sam_use_zero_m: "Insert 0M in CIGAR between adjacent insertions and deletions Required by Picard, but can cause errors in other tools"
    sam_extended_cigar: "Use extended CIGAR format (using X and = symbols instead of M, to indicate matches and mismatches, respectively"
    force_xs_dir: "For RNA-Seq alignments, disallows XS:A:? when the sense direction is unclear, and replaces this value arbitrarily with XS:A:+. May be useful for some programs, such as Cufflinks, that cannot handle XS:A:?.  However, if you use this flag, the reported value of XS:A:+ in these cases will not be meaningful."
    md_lowercase_snp: "In MD string, when known SNPs are given by the -v flag, prints difference nucleotides as lower-case when they, differ from reference but match a known alternate allele"
    action_if_cigar_error: "Action to take if there is a disagreement between CIGAR length and sequence length Allowed values: ignore, warning (default), noprint, abort Note that the noprint option does not print the CIGAR string at all if there is an error, so it may break a SAM parser"
    read_group_id: "Value to put into read-group id (RG-ID) field"
    read_group_name: "Value to put into read-group name (RG-SM) field"
    read_group_library: "Value to put into read-group library (RG-LB) field"
    read_group_platform: "Value to put into read-group library (RG-PL) field"
    quality_protocol: "Protocol for input quality scores.  Allowed values: illumina (ASCII 64-126) (equivalent to -J 64 -j -31) sanger   (ASCII 33-126) (equivalent to -J 33 -j 0) Default is sanger (no quality print shift) SAM output files should have quality scores in sanger protocol Or you can specify the print shift with this flag:"
    quality_print_shift: "Shift FASTQ quality scores by this amount in output (default is 0 for sanger protocol; to change Illumina input to Sanger output, select -31)"
    map_dir: "Map directory"
    map_file_argument: "Map file.  If argument is '?' (with the quotes), this lists available map files."
    map_exons: "Map each exon separately"
    map_both: "Report hits from both strands of genome"
    flanking: "Show flanking hits (default 0)"
    print_comment: "Show comment line for each hit"
    no_lengths: "No intron lengths in alignment"
    invert_mode: "Mode for alignments to genomic (-) strand: 0=Don't invert the cDNA (default) 1=Invert cDNA and print genomic (-) strand 2=Invert cDNA and print genomic (+) strand"
    intron_gap: "Nucleotides to show on each end of intron (default 3)"
    wrap_length: "Wrap length for alignment (default 50)"
    min_trimmed_coverage: "Do not print alignments with trimmed coverage less this value (default=0.0, which means no filtering) Note that chimeric alignments will be output regardless of this filter"
    min_identity: "Do not print alignments with identity less this value (default=0.0, which means no filtering) Note that chimeric alignments will be output regardless of this filter"
    check: "Check compiler assumptions"
    allocate_allocate_same: "allocate        allocate     (same as 4)"
  }
}