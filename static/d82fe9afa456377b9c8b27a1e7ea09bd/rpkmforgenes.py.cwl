class: CommandLineTool
id: rpkmforgenes.py.cwl
inputs:
- id: in_by_output_file
  doc: by output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_list_input_files
  doc: by list of input files (by default, guesses format from file extension)
  type: File?
  inputBinding:
    prefix: -i
- id: in_by_annotation_file
  doc: by annotation file
  type: File?
  inputBinding:
    prefix: -a
- id: in_bigwig_file_directory
  doc: by a bigWig file, alternatively a directory for files for non-unique positions
    (lower case for nonunique k-mers (where k is the read length), upper case for
    unique; filenames are e.g. chr1.fa, can also be chr1_unique20-255.btxt etc
  type: long?
  inputBinding:
    prefix: -u
- id: in_no_three_utr
  doc: remove 3'UTRs
  type: long?
  inputBinding:
    prefix: -no3utr
- id: in_full_transcript
  doc: not remove 3'UTRs (default)
  type: long?
  inputBinding:
    prefix: -fulltranscript
- id: in_maxlength
  doc: by a distance to cut each transcript from the 3' end, from 5' if negative (never
    seems to give better values)
  type: long?
  inputBinding:
    prefix: -maxlength
- id: in_max_genes
  doc: how many genes expression is calculated for (for testing purposes)
  type: string?
  inputBinding:
    prefix: -maxgenes
- id: in_name_collapse
  doc: only consider overlap between isoform with the same gene identifier (shaky)
  type: string?
  inputBinding:
    prefix: -namecollapse
- id: in_no_collapse
  doc: get isoform expressions (shaky)
  type: string?
  inputBinding:
    prefix: -nocollapse
- id: in_no_overlap
  doc: ignore that transcripts can overlap (will count some reads several times)
  type: string?
  inputBinding:
    prefix: -nooverlap
- id: in_rm_name_overlap
  doc: ignore regions shared my multiple genes (seems to work well)
  type: string?
  inputBinding:
    prefix: -rmnameoverlap
- id: in_rm_regions
  doc: by a bed file of regions which should be removed from genes
  type: File?
  inputBinding:
    prefix: -rmregions
- id: in_flat
  doc: flatten all isoforms to one gene model (likely to give too low RPKM values)
  type: string?
  inputBinding:
    prefix: -flat
- id: in_tx_unique
  doc: ignore regions shared by multiple gene isoforms
  type: string?
  inputBinding:
    prefix: -txunique
- id: in_only_coding
  doc: ignore noncoding transcripts
  type: string?
  inputBinding:
    prefix: -onlycoding
- id: in_swap_strands
  doc: make reads on + strand map to genes on - and vice versa (and sets -strand)
  type: string?
  inputBinding:
    prefix: -swapstrands
- id: in_introns
  doc: gene expression from introns rather than exons (also removes exons of other
    isoforms)
  type: string?
  inputBinding:
    prefix: -introns
- id: in_keep_hap
  doc: not remove haplotype chromosome (_hap/_alt) annotation
  type: string?
  inputBinding:
    prefix: -keephap
- id: in_no_random
  doc: remove genes on unplaced contigs
  type: string?
  inputBinding:
    prefix: -norandom
- id: in_gene_pred
  doc: annotation file uses format of refGene.txt etc (default if cannot guess from
    file name suffix)
  type: File?
  inputBinding:
    prefix: -genePred
- id: in_bed_ann
  doc: 0-based bed file, chromosome start end and 9 optional fields
  type: File?
  inputBinding:
    prefix: -bedann
- id: in_en_sgt_fann
  doc: gtf format gene annotation (slow, generally better to convert to bed or genepred)
  type: string?
  inputBinding:
    prefix: -ensgtfann
- id: in_add_chr
  doc: change a read aligning to 1 to chr1, 2 to chr2 etc
  type: long?
  inputBinding:
    prefix: -addchr
- id: in_bed
  doc: separated bed file (default if cannot guess from file name suffix)
  type: File?
  inputBinding:
    prefix: -bed
- id: in_bed_compacted
  doc: file with number of reads in the score column
  type: long?
  inputBinding:
    prefix: -bedcompacted
- id: in_bed_space
  doc: separated bed file
  type: File?
  inputBinding:
    prefix: -bedspace
- id: in_bowtie
  doc: default output format of bowtie
  type: string?
  inputBinding:
    prefix: -bowtie
- id: in_sam_se
  doc: format, uniquely mapped reads (faster than -sam, , default for SAM))
  type: string?
  inputBinding:
    prefix: -samse
- id: in_bam_u
  doc: or SAM format, uniquely mapped reads (faster than -bam or -samse, default for
    BAM)
  type: string?
  inputBinding:
    prefix: -bamu
- id: in_gff
  doc: file with reads, no groups
  type: File?
  inputBinding:
    prefix: -gff
- id: in_mrna_norm
  doc: normalize by the number of reads matching mRNA exons (default)
  type: long?
  inputBinding:
    prefix: -mRNAnorm
- id: in_exon_norm
  doc: normalize by the number of reads matching exons, including ncRNA
  type: long?
  inputBinding:
    prefix: -exonnorm
- id: in_all_map_norm
  doc: normalize by the total number of mapped reads (default if annotation contains
    no mRNA)
  type: long?
  inputBinding:
    prefix: -allmapnorm
- id: in_forced_total
  doc: by a number of reads for each sample to set a constant to normalise by
  type: long?
  inputBinding:
    prefix: -forcedtotal
- id: in_read_count
  doc: add the number of reads to the output
  type: long?
  inputBinding:
    prefix: -readcount
- id: in_table
  doc: output format
  type: string?
  inputBinding:
    prefix: -table
- id: in_sort_pos
  doc: output sorted by genome position
  type: string?
  inputBinding:
    prefix: -sortpos
- id: in_export_ann
  doc: by a filename to write which exons have been used, also prints exon read counts
    for the last input file
  type: File?
  inputBinding:
    prefix: -exportann
- id: in_read_present
  doc: '- to suppress zero count entries - Ramu'
  type: boolean?
  inputBinding:
    prefix: -readpresent
- id: in_strand
  doc: use strand information of reads
  type: string?
  inputBinding:
    prefix: -strand
- id: in_both_ends
  doc: also map the end positions to genes, each end counted as 0.5 (or 0.25 for paired-end
    reads)
  type: double?
  inputBinding:
    prefix: -bothends
- id: in_both_ends_ceil
  doc: set -bothends but round the read count upward
  type: string?
  inputBinding:
    prefix: -bothendsceil
- id: in_mid_read
  doc: use middle of the read as read position
  type: string?
  inputBinding:
    prefix: -midread
- id: in_diff_reads
  doc: count only one read if several have the same position, strand and length (use
    with -bam or -sam if paired-end; samtools rmdup is generally better)
  type: long?
  inputBinding:
    prefix: -diffreads
- id: in_max_reads
  doc: by maximum number of reads to be used
  type: long?
  inputBinding:
    prefix: -maxreads
- id: in_random_reads
  doc: make -maxreads pick reads at random
  type: string?
  inputBinding:
    prefix: -randomreads
- id: in_min_qual
  doc: by an integer, to restrict reads to minimum this mapping quality (for sam,
    bam) or score (for bed, gff), default use all
  type: long?
  inputBinding:
    prefix: -minqual
- id: in_max_nm
  doc: by an integer, to restrict reads to maximum this edit distance (nM or NM flag
    in sam, bam), default use all
  type: long?
  inputBinding:
    prefix: -maxNM
- id: in_list_sample_names
  doc: by list of sample names (input file names are otherwise used)
  type: File?
  inputBinding:
    prefix: -n
- id: in_number_files_process
  doc: by number of files to process in parallel
  type: long?
  inputBinding:
    prefix: -p
- id: in_quite
  doc: skip progress messages and warnings
  type: string?
  inputBinding:
    prefix: -quite
- id: in_print_message_quit
  doc: print this message and quit
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_by_output_file
  doc: by output file
  type: File?
  outputBinding:
    glob: $(inputs.in_by_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rpkmforgenes.py
