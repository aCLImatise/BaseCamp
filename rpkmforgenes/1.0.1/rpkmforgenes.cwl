class: CommandLineTool
id: rpkmforgenes.py.cwl
inputs:
- id: o
  doc: by output file
  type: string
  inputBinding:
    prefix: -o
- id: i
  doc: by list of input files (by default, guesses format from file extension)
  type: string
  inputBinding:
    prefix: -i
- id: a
  doc: by annotation file
  type: string
  inputBinding:
    prefix: -a
- id: u
  doc: by a bigWig file, alternatively a directory for files for non-unique positions
    (lower case for nonunique k-mers (where k is the read length), upper case for
    unique; filenames are e.g. chr1.fa, can also be chr1_unique20-255.btxt etc
  type: string
  inputBinding:
    prefix: -u
- id: no3utr
  doc: remove 3'UTRs
  type: string
  inputBinding:
    prefix: -no3utr
- id: full_transcript
  doc: not remove 3'UTRs (default)
  type: string
  inputBinding:
    prefix: -fulltranscript
- id: maxlength
  doc: by a distance to cut each transcript from the 3' end, from 5' if negative (never
    seems to give better values)
  type: string
  inputBinding:
    prefix: -maxlength
- id: max_genes
  doc: how many genes expression is calculated for (for testing purposes)
  type: string
  inputBinding:
    prefix: -maxgenes
- id: name_collapse
  doc: only consider overlap between isoform with the same gene identifier (shaky)
  type: string
  inputBinding:
    prefix: -namecollapse
- id: no_collapse
  doc: get isoform expressions (shaky)
  type: string
  inputBinding:
    prefix: -nocollapse
- id: no_overlap
  doc: ignore that transcripts can overlap (will count some reads several times)
  type: string
  inputBinding:
    prefix: -nooverlap
- id: rm_name_overlap
  doc: ignore regions shared my multiple genes (seems to work well)
  type: string
  inputBinding:
    prefix: -rmnameoverlap
- id: rm_regions
  doc: by a bed file of regions which should be removed from genes
  type: string
  inputBinding:
    prefix: -rmregions
- id: flat
  doc: flatten all isoforms to one gene model (likely to give too low RPKM values)
  type: string
  inputBinding:
    prefix: -flat
- id: tx_unique
  doc: ignore regions shared by multiple gene isoforms
  type: string
  inputBinding:
    prefix: -txunique
- id: only_coding
  doc: ignore noncoding transcripts
  type: string
  inputBinding:
    prefix: -onlycoding
- id: swap_strands
  doc: make reads on + strand map to genes on - and vice versa (and sets -strand)
  type: string
  inputBinding:
    prefix: -swapstrands
- id: introns
  doc: gene expression from introns rather than exons (also removes exons of other
    isoforms)
  type: string
  inputBinding:
    prefix: -introns
- id: keep_hap
  doc: not remove haplotype chromosome (_hap/_alt) annotation
  type: string
  inputBinding:
    prefix: -keephap
- id: no_random
  doc: remove genes on unplaced contigs
  type: string
  inputBinding:
    prefix: -norandom
- id: gene_pred
  doc: annotation file uses format of refGene.txt etc (default if cannot guess from
    file name suffix)
  type: string
  inputBinding:
    prefix: -genePred
- id: bed_ann
  doc: 0-based bed file, chromosome start end and 9 optional fields
  type: string
  inputBinding:
    prefix: -bedann
- id: en_sgt_fann
  doc: gtf format gene annotation (slow, generally better to convert to bed or genepred)
  type: string
  inputBinding:
    prefix: -ensgtfann
- id: add_chr
  doc: change a read aligning to 1 to chr1, 2 to chr2 etc
  type: string
  inputBinding:
    prefix: -addchr
- id: bed
  doc: separated bed file (default if cannot guess from file name suffix)
  type: string
  inputBinding:
    prefix: -bed
- id: bed_compacted
  doc: file with number of reads in the score column
  type: string
  inputBinding:
    prefix: -bedcompacted
- id: bed_space
  doc: separated bed file
  type: string
  inputBinding:
    prefix: -bedspace
- id: bowtie
  doc: default output format of bowtie
  type: string
  inputBinding:
    prefix: -bowtie
- id: sam_se
  doc: format, uniquely mapped reads (faster than -sam, , default for SAM))
  type: string
  inputBinding:
    prefix: -samse
- id: bam_u
  doc: or SAM format, uniquely mapped reads (faster than -bam or -samse, default for
    BAM)
  type: string
  inputBinding:
    prefix: -bamu
- id: gff
  doc: file with reads, no groups
  type: string
  inputBinding:
    prefix: -gff
- id: mrna_norm
  doc: normalize by the number of reads matching mRNA exons (default)
  type: string
  inputBinding:
    prefix: -mRNAnorm
- id: exon_norm
  doc: normalize by the number of reads matching exons, including ncRNA
  type: string
  inputBinding:
    prefix: -exonnorm
- id: all_map_norm
  doc: normalize by the total number of mapped reads (default if annotation contains
    no mRNA)
  type: string
  inputBinding:
    prefix: -allmapnorm
- id: forced_total
  doc: by a number of reads for each sample to set a constant to normalise by
  type: string
  inputBinding:
    prefix: -forcedtotal
- id: read_count
  doc: add the number of reads to the output
  type: string
  inputBinding:
    prefix: -readcount
- id: table
  doc: output format
  type: string
  inputBinding:
    prefix: -table
- id: sort_pos
  doc: output sorted by genome position
  type: string
  inputBinding:
    prefix: -sortpos
- id: export_ann
  doc: by a filename to write which exons have been used, also prints exon read counts
    for the last input file
  type: string
  inputBinding:
    prefix: -exportann
- id: read_present
  doc: zero count entries - Ramu
  type: string
  inputBinding:
    prefix: -readpresent
- id: strand
  doc: use strand information of reads
  type: string
  inputBinding:
    prefix: -strand
- id: both_ends
  doc: also map the end positions to genes, each end counted as 0.5 (or 0.25 for paired-end
    reads)
  type: string
  inputBinding:
    prefix: -bothends
- id: both_ends_ceil
  doc: set -bothends but round the read count upward
  type: string
  inputBinding:
    prefix: -bothendsceil
- id: mid_read
  doc: use middle of the read as read position
  type: string
  inputBinding:
    prefix: -midread
- id: diff_reads
  doc: count only one read if several have the same position, strand and length (use
    with -bam or -sam if paired-end; samtools rmdup is generally better)
  type: string
  inputBinding:
    prefix: -diffreads
- id: max_reads
  doc: by maximum number of reads to be used
  type: string
  inputBinding:
    prefix: -maxreads
- id: random_reads
  doc: make -maxreads pick reads at random
  type: string
  inputBinding:
    prefix: -randomreads
- id: min_qual
  doc: by an integer, to restrict reads to minimum this mapping quality (for sam,
    bam) or score (for bed, gff), default use all
  type: string
  inputBinding:
    prefix: -minqual
- id: max_nm
  doc: by an integer, to restrict reads to maximum this edit distance (nM or NM flag
    in sam, bam), default use all
  type: string
  inputBinding:
    prefix: -maxNM
- id: add_chr
  doc: add the text 'chr' to read chromosome field, to resolve Ensembl genome/UCSC
    annotation mismatch
  type: string
  inputBinding:
    prefix: -addchr
- id: n
  doc: by list of sample names (input file names are otherwise used)
  type: string
  inputBinding:
    prefix: -n
- id: p
  doc: by number of files to process in parallel
  type: string
  inputBinding:
    prefix: -p
- id: quite
  doc: skip progress messages and warnings
  type: string
  inputBinding:
    prefix: -quite
- id: h
  doc: print this message and quit
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- rpkmforgenes.py
