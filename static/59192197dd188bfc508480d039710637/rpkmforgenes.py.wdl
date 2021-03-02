version 1.0

task Rpkmforgenespy {
  input {
    File? by_output_file
    File? list_input_files
    File? by_annotation_file
    Int? bigwig_file_directory
    Int? no_three_utr
    Int? full_transcript
    Int? maxlength
    String? max_genes
    String? name_collapse
    String? no_collapse
    String? no_overlap
    String? rm_name_overlap
    File? rm_regions
    String? flat
    String? tx_unique
    String? only_coding
    String? swap_strands
    String? introns
    String? keep_hap
    String? no_random
    File? gene_pred
    File? bed_ann
    String? en_sgt_fann
    Int? add_chr
    File? bed
    Int? bed_compacted
    File? bed_space
    String? bowtie
    String? sam_se
    String? bam_u
    File? gff
    Int? mrna_norm
    Int? exon_norm
    Int? all_map_norm
    Int? forced_total
    Int? read_count
    String? table
    String? sort_pos
    File? export_ann
    Boolean? read_present
    String? strand
    Float? both_ends
    String? both_ends_ceil
    String? mid_read
    Int? diff_reads
    Int? max_reads
    String? random_reads
    Int? min_qual
    Int? max_nm
    File? list_sample_names
    Int? number_files_process
    String? quite
    String? print_message_quit
  }
  command <<<
    rpkmforgenes_py \
      ~{if defined(by_output_file) then ("-o " +  '"' + by_output_file + '"') else ""} \
      ~{if defined(list_input_files) then ("-i " +  '"' + list_input_files + '"') else ""} \
      ~{if defined(by_annotation_file) then ("-a " +  '"' + by_annotation_file + '"') else ""} \
      ~{if defined(bigwig_file_directory) then ("-u " +  '"' + bigwig_file_directory + '"') else ""} \
      ~{if defined(no_three_utr) then ("-no3utr " +  '"' + no_three_utr + '"') else ""} \
      ~{if defined(full_transcript) then ("-fulltranscript " +  '"' + full_transcript + '"') else ""} \
      ~{if defined(maxlength) then ("-maxlength " +  '"' + maxlength + '"') else ""} \
      ~{if defined(max_genes) then ("-maxgenes " +  '"' + max_genes + '"') else ""} \
      ~{if defined(name_collapse) then ("-namecollapse " +  '"' + name_collapse + '"') else ""} \
      ~{if defined(no_collapse) then ("-nocollapse " +  '"' + no_collapse + '"') else ""} \
      ~{if defined(no_overlap) then ("-nooverlap " +  '"' + no_overlap + '"') else ""} \
      ~{if defined(rm_name_overlap) then ("-rmnameoverlap " +  '"' + rm_name_overlap + '"') else ""} \
      ~{if defined(rm_regions) then ("-rmregions " +  '"' + rm_regions + '"') else ""} \
      ~{if defined(flat) then ("-flat " +  '"' + flat + '"') else ""} \
      ~{if defined(tx_unique) then ("-txunique " +  '"' + tx_unique + '"') else ""} \
      ~{if defined(only_coding) then ("-onlycoding " +  '"' + only_coding + '"') else ""} \
      ~{if defined(swap_strands) then ("-swapstrands " +  '"' + swap_strands + '"') else ""} \
      ~{if defined(introns) then ("-introns " +  '"' + introns + '"') else ""} \
      ~{if defined(keep_hap) then ("-keephap " +  '"' + keep_hap + '"') else ""} \
      ~{if defined(no_random) then ("-norandom " +  '"' + no_random + '"') else ""} \
      ~{if defined(gene_pred) then ("-genePred " +  '"' + gene_pred + '"') else ""} \
      ~{if defined(bed_ann) then ("-bedann " +  '"' + bed_ann + '"') else ""} \
      ~{if defined(en_sgt_fann) then ("-ensgtfann " +  '"' + en_sgt_fann + '"') else ""} \
      ~{if defined(add_chr) then ("-addchr " +  '"' + add_chr + '"') else ""} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bed_compacted) then ("-bedcompacted " +  '"' + bed_compacted + '"') else ""} \
      ~{if defined(bed_space) then ("-bedspace " +  '"' + bed_space + '"') else ""} \
      ~{if defined(bowtie) then ("-bowtie " +  '"' + bowtie + '"') else ""} \
      ~{if defined(sam_se) then ("-samse " +  '"' + sam_se + '"') else ""} \
      ~{if defined(bam_u) then ("-bamu " +  '"' + bam_u + '"') else ""} \
      ~{if defined(gff) then ("-gff " +  '"' + gff + '"') else ""} \
      ~{if defined(mrna_norm) then ("-mRNAnorm " +  '"' + mrna_norm + '"') else ""} \
      ~{if defined(exon_norm) then ("-exonnorm " +  '"' + exon_norm + '"') else ""} \
      ~{if defined(all_map_norm) then ("-allmapnorm " +  '"' + all_map_norm + '"') else ""} \
      ~{if defined(forced_total) then ("-forcedtotal " +  '"' + forced_total + '"') else ""} \
      ~{if defined(read_count) then ("-readcount " +  '"' + read_count + '"') else ""} \
      ~{if defined(table) then ("-table " +  '"' + table + '"') else ""} \
      ~{if defined(sort_pos) then ("-sortpos " +  '"' + sort_pos + '"') else ""} \
      ~{if defined(export_ann) then ("-exportann " +  '"' + export_ann + '"') else ""} \
      ~{if (read_present) then "-readpresent" else ""} \
      ~{if defined(strand) then ("-strand " +  '"' + strand + '"') else ""} \
      ~{if defined(both_ends) then ("-bothends " +  '"' + both_ends + '"') else ""} \
      ~{if defined(both_ends_ceil) then ("-bothendsceil " +  '"' + both_ends_ceil + '"') else ""} \
      ~{if defined(mid_read) then ("-midread " +  '"' + mid_read + '"') else ""} \
      ~{if defined(diff_reads) then ("-diffreads " +  '"' + diff_reads + '"') else ""} \
      ~{if defined(max_reads) then ("-maxreads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(random_reads) then ("-randomreads " +  '"' + random_reads + '"') else ""} \
      ~{if defined(min_qual) then ("-minqual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(max_nm) then ("-maxNM " +  '"' + max_nm + '"') else ""} \
      ~{if defined(list_sample_names) then ("-n " +  '"' + list_sample_names + '"') else ""} \
      ~{if defined(number_files_process) then ("-p " +  '"' + number_files_process + '"') else ""} \
      ~{if defined(quite) then ("-quite " +  '"' + quite + '"') else ""} \
      ~{if defined(print_message_quit) then ("-h " +  '"' + print_message_quit + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    by_output_file: "by output file"
    list_input_files: "by list of input files (by default, guesses format from file extension)"
    by_annotation_file: "by annotation file"
    bigwig_file_directory: "by a bigWig file, alternatively a directory for files for non-unique positions (lower case for nonunique k-mers (where k is the read length), upper case for unique; filenames are e.g. chr1.fa, can also be chr1_unique20-255.btxt etc"
    no_three_utr: "remove 3'UTRs"
    full_transcript: "not remove 3'UTRs (default)"
    maxlength: "by a distance to cut each transcript from the 3' end, from 5' if negative (never seems to give better values)"
    max_genes: "how many genes expression is calculated for (for testing purposes)"
    name_collapse: "only consider overlap between isoform with the same gene identifier (shaky)"
    no_collapse: "get isoform expressions (shaky)"
    no_overlap: "ignore that transcripts can overlap (will count some reads several times)"
    rm_name_overlap: "ignore regions shared my multiple genes (seems to work well)"
    rm_regions: "by a bed file of regions which should be removed from genes"
    flat: "flatten all isoforms to one gene model (likely to give too low RPKM values)"
    tx_unique: "ignore regions shared by multiple gene isoforms"
    only_coding: "ignore noncoding transcripts"
    swap_strands: "make reads on + strand map to genes on - and vice versa (and sets -strand)"
    introns: "gene expression from introns rather than exons (also removes exons of other isoforms)"
    keep_hap: "not remove haplotype chromosome (_hap/_alt) annotation"
    no_random: "remove genes on unplaced contigs"
    gene_pred: "annotation file uses format of refGene.txt etc (default if cannot guess from file name suffix)"
    bed_ann: "0-based bed file, chromosome start end and 9 optional fields"
    en_sgt_fann: "gtf format gene annotation (slow, generally better to convert to bed or genepred)"
    add_chr: "change a read aligning to 1 to chr1, 2 to chr2 etc"
    bed: "separated bed file (default if cannot guess from file name suffix)"
    bed_compacted: "file with number of reads in the score column"
    bed_space: "separated bed file"
    bowtie: "default output format of bowtie"
    sam_se: "format, uniquely mapped reads (faster than -sam, , default for SAM))"
    bam_u: "or SAM format, uniquely mapped reads (faster than -bam or -samse, default for BAM)"
    gff: "file with reads, no groups"
    mrna_norm: "normalize by the number of reads matching mRNA exons (default)"
    exon_norm: "normalize by the number of reads matching exons, including ncRNA"
    all_map_norm: "normalize by the total number of mapped reads (default if annotation contains no mRNA)"
    forced_total: "by a number of reads for each sample to set a constant to normalise by"
    read_count: "add the number of reads to the output"
    table: "output format"
    sort_pos: "output sorted by genome position"
    export_ann: "by a filename to write which exons have been used, also prints exon read counts for the last input file"
    read_present: "- to suppress zero count entries - Ramu"
    strand: "use strand information of reads"
    both_ends: "also map the end positions to genes, each end counted as 0.5 (or 0.25 for paired-end reads)"
    both_ends_ceil: "set -bothends but round the read count upward"
    mid_read: "use middle of the read as read position"
    diff_reads: "count only one read if several have the same position, strand and length (use with -bam or -sam if paired-end; samtools rmdup is generally better)"
    max_reads: "by maximum number of reads to be used"
    random_reads: "make -maxreads pick reads at random"
    min_qual: "by an integer, to restrict reads to minimum this mapping quality (for sam, bam) or score (for bed, gff), default use all"
    max_nm: "by an integer, to restrict reads to maximum this edit distance (nM or NM flag in sam, bam), default use all"
    list_sample_names: "by list of sample names (input file names are otherwise used)"
    number_files_process: "by number of files to process in parallel"
    quite: "skip progress messages and warnings"
    print_message_quit: "print this message and quit"
  }
  output {
    File out_stdout = stdout()
    File out_by_output_file = "${in_by_output_file}"
  }
}