version 1.0

task Gmapl {
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
    Int? batch
    Int? use_shared_memory
    Boolean? no_splicing
    Int? max_deletion_length
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
    String? strand
    String? direction
    Int? canonical_mode
    Boolean? cross_species
    Int? allow_close_indels
    Float? micro_exon_splice_prob
    Boolean? in_del_open
    Boolean? in_del_extend
    Directory? c_met_dir
    Directory? atoi_dir
    String? alignment_mode_standard
    Boolean? prune_level
    Boolean? summary
    Boolean? align
    Boolean? continuous
    Boolean? continuous_by_exon
    String? exons
    Boolean? protein_dna
    Boolean? protein_gen
    File? format
    Int? n_paths
    Float? suboptimal_score
    Boolean? ordered
    Boolean? md_five
    Boolean? chimera_overlap
    Boolean? fails_only
    Boolean? no_fails
    Directory? snps_dir
    String? use_snps
    File? split_output
    File? failed_input
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
    Int? gff_three_cds
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
    Int? quality_protocol
    Int? quality_print_shift
    Directory? map_dir
    File? map_file_argument
    Boolean? map_exons
    Boolean? map_both
    Int? flanking
    Boolean? print_comment
    Boolean? no_lengths
    Boolean? no_margin
    Int? invert_mode
    Int? intron_gap
    Int? wrap_length
    Float? min_trimmed_coverage
    Float? min_identity
    Boolean? check
    String positions_mmap_mmap
  }
  command <<<
    gmapl \
      ~{positions_mmap_mmap} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(sampling) then ("--sampling " +  '"' + sampling + '"') else ""} \
      ~{if defined(gs_eg) then ("--gseg " +  '"' + gs_eg + '"') else ""} \
      ~{if (self_align) then "--selfalign" else ""} \
      ~{if (pair_align) then "--pairalign" else ""} \
      ~{if defined(cmdline) then ("--cmdline " +  '"' + cmdline + '"') else ""} \
      ~{if defined(part) then ("--part " +  '"' + part + '"') else ""} \
      ~{if defined(input_buffer_size) then ("--input-buffer-size " +  '"' + input_buffer_size + '"') else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{if defined(use_shared_memory) then ("--use-shared-memory " +  '"' + use_shared_memory + '"') else ""} \
      ~{if (no_splicing) then "--nosplicing" else ""} \
      ~{if defined(max_deletion_length) then ("--max-deletionlength " +  '"' + max_deletion_length + '"') else ""} \
      ~{if defined(min_intron_length) then ("--min-intronlength " +  '"' + min_intron_length + '"') else ""} \
      ~{if defined(max_intron_length_middle) then ("--max-intronlength-middle " +  '"' + max_intron_length_middle + '"') else ""} \
      ~{if defined(max_intron_length_ends) then ("--max-intronlength-ends " +  '"' + max_intron_length_ends + '"') else ""} \
      ~{if (split_large_introns) then "--split-large-introns" else ""} \
      ~{if defined(trim_end_exons) then ("--trim-end-exons " +  '"' + trim_end_exons + '"') else ""} \
      ~{if defined(local_splice_dist) then ("--localsplicedist " +  '"' + local_splice_dist + '"') else ""} \
      ~{if defined(total_length) then ("--totallength " +  '"' + total_length + '"') else ""} \
      ~{if defined(chimera_margin) then ("--chimera-margin " +  '"' + chimera_margin + '"') else ""} \
      ~{if (no_chimeras) then "--no-chimeras" else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(chr_subset) then ("--chrsubset " +  '"' + chr_subset + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(direction) then ("--direction " +  '"' + direction + '"') else ""} \
      ~{if defined(canonical_mode) then ("--canonical-mode " +  '"' + canonical_mode + '"') else ""} \
      ~{if (cross_species) then "--cross-species" else ""} \
      ~{if defined(allow_close_indels) then ("--allow-close-indels " +  '"' + allow_close_indels + '"') else ""} \
      ~{if defined(micro_exon_splice_prob) then ("--microexon-spliceprob " +  '"' + micro_exon_splice_prob + '"') else ""} \
      ~{if (in_del_open) then "--indel-open" else ""} \
      ~{if (in_del_extend) then "--indel-extend" else ""} \
      ~{if defined(c_met_dir) then ("--cmetdir " +  '"' + c_met_dir + '"') else ""} \
      ~{if defined(atoi_dir) then ("--atoidir " +  '"' + atoi_dir + '"') else ""} \
      ~{if defined(alignment_mode_standard) then ("--mode " +  '"' + alignment_mode_standard + '"') else ""} \
      ~{if (prune_level) then "--prunelevel" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (align) then "--align" else ""} \
      ~{if (continuous) then "--continuous" else ""} \
      ~{if (continuous_by_exon) then "--continuous-by-exon" else ""} \
      ~{if defined(exons) then ("--exons " +  '"' + exons + '"') else ""} \
      ~{if (protein_dna) then "--protein_dna" else ""} \
      ~{if (protein_gen) then "--protein_gen" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(n_paths) then ("--npaths " +  '"' + n_paths + '"') else ""} \
      ~{if defined(suboptimal_score) then ("--suboptimal-score " +  '"' + suboptimal_score + '"') else ""} \
      ~{if (ordered) then "--ordered" else ""} \
      ~{if (md_five) then "--md5" else ""} \
      ~{if (chimera_overlap) then "--chimera-overlap" else ""} \
      ~{if (fails_only) then "--failsonly" else ""} \
      ~{if (no_fails) then "--nofails" else ""} \
      ~{if defined(snps_dir) then ("--snpsdir " +  '"' + snps_dir + '"') else ""} \
      ~{if defined(use_snps) then ("--use-snps " +  '"' + use_snps + '"') else ""} \
      ~{if defined(split_output) then ("--split-output " +  '"' + split_output + '"') else ""} \
      ~{if defined(failed_input) then ("--failed-input " +  '"' + failed_input + '"') else ""} \
      ~{if (append_output) then "--append-output" else ""} \
      ~{if defined(output_buffer_size) then ("--output-buffer-size " +  '"' + output_buffer_size + '"') else ""} \
      ~{if defined(translation_code) then ("--translation-code " +  '"' + translation_code + '"') else ""} \
      ~{if (alt_start_codons) then "--alt-start-codons" else ""} \
      ~{if (full_length) then "--fulllength" else ""} \
      ~{if defined(cds_start) then ("--cdsstart " +  '"' + cds_start + '"') else ""} \
      ~{if (truncate) then "--truncate" else ""} \
      ~{if (tolerant) then "--tolerant" else ""} \
      ~{if defined(gff_three_add_separators) then ("--gff3-add-separators " +  '"' + gff_three_add_separators + '"') else ""} \
      ~{if defined(gff_three_swap_phase) then ("--gff3-swap-phase " +  '"' + gff_three_swap_phase + '"') else ""} \
      ~{if defined(gff_three_fast_a_annotation) then ("--gff3-fasta-annotation " +  '"' + gff_three_fast_a_annotation + '"') else ""} \
      ~{if defined(gff_three_cds) then ("--gff3-cds " +  '"' + gff_three_cds + '"') else ""} \
      ~{if (no_sam_headers) then "--no-sam-headers" else ""} \
      ~{if (sam_use_zero_m) then "--sam-use-0M" else ""} \
      ~{if (sam_extended_cigar) then "--sam-extended-cigar" else ""} \
      ~{if (force_xs_dir) then "--force-xs-dir" else ""} \
      ~{if (md_lowercase_snp) then "--md-lowercase-snp" else ""} \
      ~{if (action_if_cigar_error) then "--action-if-cigar-error" else ""} \
      ~{if defined(read_group_id) then ("--read-group-id " +  '"' + read_group_id + '"') else ""} \
      ~{if defined(read_group_name) then ("--read-group-name " +  '"' + read_group_name + '"') else ""} \
      ~{if defined(read_group_library) then ("--read-group-library " +  '"' + read_group_library + '"') else ""} \
      ~{if defined(read_group_platform) then ("--read-group-platform " +  '"' + read_group_platform + '"') else ""} \
      ~{if defined(quality_protocol) then ("--quality-protocol " +  '"' + quality_protocol + '"') else ""} \
      ~{if defined(quality_print_shift) then ("--quality-print-shift " +  '"' + quality_print_shift + '"') else ""} \
      ~{if defined(map_dir) then ("--mapdir " +  '"' + map_dir + '"') else ""} \
      ~{if defined(map_file_argument) then ("--map " +  '"' + map_file_argument + '"') else ""} \
      ~{if (map_exons) then "--mapexons" else ""} \
      ~{if (map_both) then "--mapboth" else ""} \
      ~{if defined(flanking) then ("--flanking " +  '"' + flanking + '"') else ""} \
      ~{if (print_comment) then "--print-comment" else ""} \
      ~{if (no_lengths) then "--nolengths" else ""} \
      ~{if (no_margin) then "--nomargin" else ""} \
      ~{if defined(invert_mode) then ("--invertmode " +  '"' + invert_mode + '"') else ""} \
      ~{if defined(intron_gap) then ("--introngap " +  '"' + intron_gap + '"') else ""} \
      ~{if defined(wrap_length) then ("--wraplength " +  '"' + wrap_length + '"') else ""} \
      ~{if defined(min_trimmed_coverage) then ("--min-trimmed-coverage " +  '"' + min_trimmed_coverage + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if (check) then "--check" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2021.02.22--pl526h2f06484_0"
  }
  parameter_meta {
    dir: "Genome directory.  Default (as specified by --with-gmapdb to the configure program) is\\n/usr/local/share"
    db: "Genome database.  If argument is '?' (with\\nthe quotes), this command lists available databases."
    km_er: "kmer size to use in genome database (allowed values: 16 or less).\\nIf not specified, the program will find the highest available\\nkmer size in the genome database"
    sampling: "Sampling to use in genome database.  If not specified, the program\\nwill find the smallest available sampling value in the genome database\\nwithin selected k-mer size"
    gs_eg: "User-supplied genomic segment"
    self_align: "Align one sequence against itself in FASTA format via stdin\\n(Useful for getting protein translation of a nucleotide sequence)"
    pair_align: "Align two sequences in FASTA format via stdin, first one being\\ngenomic and second one being cDNA"
    cmdline: ",STRING        Align these two sequences provided on the command line,\\nfirst one being genomic and second one being cDNA"
    part: "/INT             Process only the i-th out of every n sequences\\ne.g., 0/100 or 99/100 (useful for distributing jobs\\nto a computer farm)."
    input_buffer_size: "Size of input buffer (program reads this many sequences\\nat a time for efficiency) (default 1000)"
    batch: "Batch mode (default = 2)"
    use_shared_memory: "If 1, then allocated memory is shared among all processes on this node\\nIf 0 (default), then each process has private allocated memory"
    no_splicing: "Turns off splicing (useful for aligning genomic sequences\\nonto a genome)"
    max_deletion_length: "Max length for a deletion (default 100).  Above this size,\\na genomic gap will be considered an intron rather than a deletion.\\nIf the genomic gap is less than --max-deletionlength and greater\\nthan --min-intronlength, a known splice site or splice site probabilities\\nof 0.80 on both sides will be reported as an intron."
    min_intron_length: "Min length for one internal intron (default 9).  Below this size,\\na genomic gap will be considered a deletion rather than an intron.\\nIf the genomic gap is less than --max-deletionlength and greater\\nthan --min-intronlength, a known splice site or splice site probabilities\\nof 0.80 on both sides will be reported as an intron."
    max_intron_length_middle: "Max length for one internal intron (default 500000).  Note: for backward\\ncompatibility, the -K or --intronlength flag will set both\\n--max-intronlength-middle and --max-intronlength-ends.\\nAlso see --split-large-introns below."
    max_intron_length_ends: "Max length for first or last intron (default 10000).  Note: for backward\\ncompatibility, the -K or --intronlength flag will set both\\n--max-intronlength-middle and --max-intronlength-ends."
    split_large_introns: "Sometimes GMAP will exceed the value for --max-intronlength-middle,\\nif it finds a good single alignment.  However, you can force GMAP\\nto split such alignments by using this flag"
    trim_end_exons: "Trim end exons with fewer than given number of matches\\n(in nt, default 12)"
    local_splice_dist: "Max length for known splice sites at ends of sequence\\n(default 2000000)"
    total_length: "Max total intron length (default 2400000)"
    chimera_margin: "Amount of unaligned sequence that triggers\\nsearch for the remaining sequence (default 30).\\nEnables alignment of chimeric reads, and may help\\nwith some non-chimeric reads.  To turn off, set to\\nzero."
    no_chimeras: "Turns off finding of chimeras.  Same effect as --chimera-margin=0"
    n_threads: "Number of worker threads"
    chr_subset: "Limit search to given chromosome"
    strand: "Genome strand to try aligning to (plus, minus, or both default)"
    direction: "cDNA direction (sense_force, antisense_force,\\nsense_filter, antisense_filter,or auto (default))"
    canonical_mode: "Reward for canonical and semi-canonical introns\\n0=low reward, 1=high reward (default), 2=low reward for\\nhigh-identity sequences and high reward otherwise"
    cross_species: "Use a more sensitive search for canonical splicing, which helps especially\\nfor cross-species alignments and other difficult cases"
    allow_close_indels: "Allow an insertion and deletion close to each other\\n(0=no, 1=yes (default), 2=only for high-quality alignments)"
    micro_exon_splice_prob: "Allow microexons only if one of the splice site probabilities is\\ngreater than this value (default 0.95)"
    in_del_open: "In dynamic programming, opening penalty for indel"
    in_del_extend: "In dynamic programming, extension penalty for indel\\nValues for --indel-open and --indel-extend should be in [-127,-1].\\nIf value is < -127, then will use -127 instead.\\nIf --indel-open and --indel-extend are not specified, values are chosen\\nadaptively, based on the differences between the query and reference"
    c_met_dir: "Directory for methylcytosine index files (created using cmetindex)\\n(default is location of genome index files specified using -D, -V, and -d)"
    atoi_dir: "Directory for A-to-I RNA editing index files (created using atoiindex)\\n(default is location of genome index files specified using -D, -V, and -d)"
    alignment_mode_standard: "Alignment mode: standard (default), cmet-stranded, cmet-nonstranded,\\natoi-stranded, atoi-nonstranded, ttoc-stranded, or ttoc-nonstranded.\\nNon-standard modes requires you to have previously run the cmetindex\\nor atoiindex programs (which also cover the ttoc modes) on the genome"
    prune_level: "Pruning level: 0=no pruning (default), 1=poor seqs,\\n2=repetitive seqs, 3=poor and repetitive"
    summary: "Show summary of alignments only"
    align: "Show alignments"
    continuous: "Show alignment in three continuous lines"
    continuous_by_exon: "Show alignment in three lines per exon"
    exons: "Print exons (\\\"cdna\\\" or \\\"genomic\\\")\\nWill also print introns with \\\"cdna+introns\\\" or\\n\\\"genomic+introns\\\""
    protein_dna: "Print protein sequence (cDNA)"
    protein_gen: "Print protein sequence (genomic)"
    format: "Other format for output (also note the -A and -S options\\nand other options listed under Output types):\\nmask_introns,\\nmask_utr_introns,\\npsl (or 1) = PSL (BLAT) format,\\ngff3_gene (or 2) = GFF3 gene format,\\ngff3_match_cdna (or 3) = GFF3 cDNA_match format,\\ngff3_match_est (or 4) = GFF3 EST_match format,\\nsplicesites (or 6) = splicesites output (for GSNAP splicing file),\\nintrons = introns output (for GSNAP splicing file),\\nmap_exons (or 7) = IIT FASTA exon map format,\\nmap_ranges (or 8) = IIT FASTA range map format,\\ncoords (or 9) = coords in table format,\\nsampe = SAM format (setting paired_read bit in flag),\\nsamse = SAM format (without setting paired_read bit),\\nbedpe = indels and gaps in BEDPE format"
    n_paths: "Maximum number of paths to show (default 5).  If set to 1, GMAP\\nwill not report chimeric alignments, since those imply\\ntwo paths.  If you want a single alignment plus chimeric\\nalignments, then set this to be 0."
    suboptimal_score: "Report only paths whose score is within this value of the\\nbest path.\\nIf specified between 0.0 and 1.0, then treated as a fraction\\nof the score of the best alignment (matches minus penalties for\\nmismatches and indels).  Otherwise, treated as an integer\\nnumber to be subtracted from the score of the best alignment.\\nDefault value is 0.50."
    ordered: "Print output in same order as input (relevant\\nonly if there is more than one worker thread)"
    md_five: "Print MD5 checksum for each query sequence"
    chimera_overlap: "Overlap to show, if any, at chimera breakpoint"
    fails_only: "Print only failed alignments, those with no results"
    no_fails: "Exclude printing of failed alignments"
    snps_dir: "Directory for SNPs index files (created using snpindex) (default is\\nlocation of genome index files specified using -D and -d)"
    use_snps: "Use database containing known SNPs (in <STRING>.iit, built\\npreviously using snpindex) for tolerance to SNPs"
    split_output: "Basename for multiple-file output, separately for nomapping,\\nuniq, mult, (and chimera, if --chimera-margin is selected)"
    failed_input: "Print completely failed alignments as input FASTA or FASTQ format\\nto the given file.  If the --split-output flag is also given, this file\\nis generated in addition to the output in the .nomapping file."
    append_output: "When --split-output or --failedinput is given, this flag will append output\\nto the existing files.  Otherwise, the default is to create new files."
    output_buffer_size: "Buffer size, in queries, for output thread (default 1000).  When the number\\nof results to be printed exceeds this size, the worker threads are halted\\nuntil the backlog is cleared"
    translation_code: "Genetic code used for translating codons to amino acids and computing CDS\\nInteger value (default=1) corresponds to an available code at\\nhttp://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi"
    alt_start_codons: "Also, use the alternate initiation codons shown in the above Web site\\nBy default, without this option, only ATG is considered an initiation codon"
    full_length: "Assume full-length protein, starting with Met"
    cds_start: "Translate codons from given nucleotide (1-based)"
    truncate: "Truncate alignment around full-length protein, Met to Stop\\nImplies -F flag."
    tolerant: "Translates cDNA with corrections for frameshifts"
    gff_three_add_separators: "Whether to add a ### separator after each query sequence\\nValues: 0 (no), 1 (yes, default)"
    gff_three_swap_phase: "Whether to swap phase (0 => 0, 1 => 2, 2 => 1) in gff3_gene format\\nNeeded by some analysis programs, but deviates from GFF3 specification\\nValues: 0 (no, default), 1 (yes)"
    gff_three_fast_a_annotation: "Whether to include annotation from the FASTA header into the GFF3 output\\nValues: 0 (default): Do not include\\n1: Wrap all annotation as Annot=\\\"<header>\\\"\\n2: Include key=value pairs, replacing brackets with quotation marks\\nand replacing spaces between key=value pairs with semicolons"
    gff_three_cds: "Whether to use cDNA or genomic translation for the CDS coordinates\\nValues: cdna (default), genomic"
    no_sam_headers: "Do not print headers beginning with '@'"
    sam_use_zero_m: "Insert 0M in CIGAR between adjacent insertions and deletions\\nRequired by Picard, but can cause errors in other tools"
    sam_extended_cigar: "Use extended CIGAR format (using X and = symbols instead of M,\\nto indicate matches and mismatches, respectively"
    force_xs_dir: "For RNA-Seq alignments, disallows XS:A:? when the sense direction\\nis unclear, and replaces this value arbitrarily with XS:A:+.\\nMay be useful for some programs, such as Cufflinks, that cannot\\nhandle XS:A:?.  However, if you use this flag, the reported value\\nof XS:A:+ in these cases will not be meaningful."
    md_lowercase_snp: "In MD string, when known SNPs are given by the -v flag,\\nprints difference nucleotides as lower-case when they,\\ndiffer from reference but match a known alternate allele"
    action_if_cigar_error: "Action to take if there is a disagreement between CIGAR length and sequence length\\nAllowed values: ignore, warning (default), noprint, abort\\nNote that the noprint option does not print the CIGAR string at all if there\\nis an error, so it may break a SAM parser"
    read_group_id: "Value to put into read-group id (RG-ID) field"
    read_group_name: "Value to put into read-group name (RG-SM) field"
    read_group_library: "Value to put into read-group library (RG-LB) field"
    read_group_platform: "Value to put into read-group library (RG-PL) field"
    quality_protocol: "Protocol for input quality scores.  Allowed values:\\nillumina (ASCII 64-126) (equivalent to -J 64 -j -31)\\nsanger   (ASCII 33-126) (equivalent to -J 33 -j 0)\\nDefault is sanger (no quality print shift)\\nSAM output files should have quality scores in sanger protocol\\nOr you can specify the print shift with this flag:"
    quality_print_shift: "Shift FASTQ quality scores by this amount in output\\n(default is 0 for sanger protocol; to change Illumina input\\nto Sanger output, select -31)"
    map_dir: "Map directory"
    map_file_argument: "Map file.  If argument is '?' (with the quotes),\\nthis lists available map files."
    map_exons: "Map each exon separately"
    map_both: "Report hits from both strands of genome"
    flanking: "Show flanking hits (default 0)"
    print_comment: "Show comment line for each hit"
    no_lengths: "No intron lengths in alignment"
    no_margin: "No left margin in GMAP standard output (with the -A flag)"
    invert_mode: "Mode for alignments to genomic (-) strand:\\n0=Don't invert the cDNA (default)\\n1=Invert cDNA and print genomic (-) strand\\n2=Invert cDNA and print genomic (+) strand"
    intron_gap: "Nucleotides to show on each end of intron (default 3)"
    wrap_length: "Wrap length for alignment (default 50)"
    min_trimmed_coverage: "Do not print alignments with trimmed coverage less\\nthis value (default=0.0, which means no filtering)\\nNote that chimeric alignments will be output regardless\\nof this filter"
    min_identity: "Do not print alignments with identity less\\nthis value (default=0.0, which means no filtering)\\nNote that chimeric alignments will be output regardless\\nof this filter"
    check: "Check compiler assumptions"
    positions_mmap_mmap: "Positions       Genome\\n0      mmap            mmap\\n1      mmap & preload  mmap"
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
    File out_split_output = "${in_split_output}"
  }
}