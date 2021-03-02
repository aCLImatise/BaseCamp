version 1.0

task MakeTagDirectory {
  input {
    Boolean? frag_length
    Int? format
    Boolean? flip
    Boolean? total_reads
    Boolean? force_five_th
    Directory? add_tag_directory
    File? add_tag_file
    Boolean? single
    Boolean? update
    Boolean? tbp
    Int? precision
    Boolean? min_len
    String? genome
    Boolean? or
    File? check_gc
    Boolean? freq_start
    Boolean? freq_end
    Boolean? oligo_start
    Boolean? oligo_end
    File? norm_gc
    File? norm_fixed_oligo
    Int? norm_length
    Boolean? min_norm_ratio
    Boolean? max_norm_ratio
    Boolean? iter_norm
    String? filter_reads
    Boolean? remove_pe_bg
    Boolean? pe_bg_length
    Int? restriction_site
    Int? remove_spikes
    Boolean? bowtie_pe
    Directory directory
    File alignment_file_one
    File? var_file
    Int? two
  }
  command <<<
    makeTagDirectory \
      ~{directory} \
      ~{alignment_file_one} \
      ~{var_file} \
      ~{two} \
      ~{if (frag_length) then "-fragLength" else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if (flip) then "-flip" else ""} \
      ~{if (total_reads) then "-totalReads" else ""} \
      ~{if (force_five_th) then "-force5th" else ""} \
      ~{if defined(add_tag_directory) then ("-d " +  '"' + add_tag_directory + '"') else ""} \
      ~{if defined(add_tag_file) then ("-t " +  '"' + add_tag_file + '"') else ""} \
      ~{if (single) then "-single" else ""} \
      ~{if (update) then "-update" else ""} \
      ~{if (tbp) then "-tbp" else ""} \
      ~{if defined(precision) then ("-precision " +  '"' + precision + '"') else ""} \
      ~{if (min_len) then "-minlen" else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if (or) then "-or-" else ""} \
      ~{if defined(check_gc) then ("-checkGC " +  '"' + check_gc + '"') else ""} \
      ~{if (freq_start) then "-freqStart" else ""} \
      ~{if (freq_end) then "-freqEnd" else ""} \
      ~{if (oligo_start) then "-oligoStart" else ""} \
      ~{if (oligo_end) then "-oligoEnd" else ""} \
      ~{if defined(norm_gc) then ("-normGC " +  '"' + norm_gc + '"') else ""} \
      ~{if defined(norm_fixed_oligo) then ("-normFixedOligo " +  '"' + norm_fixed_oligo + '"') else ""} \
      ~{if defined(norm_length) then ("-normLength " +  '"' + norm_length + '"') else ""} \
      ~{if (min_norm_ratio) then "-minNormRatio" else ""} \
      ~{if (max_norm_ratio) then "-maxNormRatio" else ""} \
      ~{if (iter_norm) then "-iterNorm" else ""} \
      ~{if defined(filter_reads) then ("-filterReads " +  '"' + filter_reads + '"') else ""} \
      ~{if (remove_pe_bg) then "-removePEbg" else ""} \
      ~{if (pe_bg_length) then "-PEbgLength" else ""} \
      ~{if defined(restriction_site) then ("-restrictionSite " +  '"' + restriction_site + '"') else ""} \
      ~{if defined(remove_spikes) then ("-removeSpikes " +  '"' + remove_spikes + '"') else ""} \
      ~{if (bowtie_pe) then "-bowtiePE" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    frag_length: "<# | given | pe> (Set estimated fragment length or use PE length - given: use read lengths)\\nBy default treats the sample as a single read ChIP-Seq experiment"
    format: "where X can be: (with column specifications underneath)\\nbed - BED format files:\\n(1:chr,2:start,3:end,4:+/- or read name,5:# tags,6:+/-)\\n-force5th (5th column of BED file contains # of reads mapping to position)\\nsam - SAM formatted files (use samTools to covert BAMs into SAM if you have BAM)\\n-unique (keep if there is a single best alignment based on mapq)\\n-mapq <#> (Minimum mapq for -unique, default: 10, set negative to use AS:i:/XS:i:)\\n-keepOne (keep one of the best alignments even if others exist)\\n-keepAll (include all alignments in SAM file)\\n-mis (Maximum allowed mismatches, default: no limit, uses MD:Z: tag)\\n-sspe (strand specific, paired-end reads[flips strand of 2nd read to match])\\n-read1/-read2 (only analyze 1st or 2nd read for PE sequencing)\\n-rmsoft (clip soft clipped regions from reads, default: assume read extends/mismatch)\\n-omitSN (ignore alignments with splicing/soft clipping, i.e. use for csRNA-seq)\\nbowtie - output from bowtie (run with --best -k 2 options)\\n(1:read name,2:+/-,3:chr,4:position,5:seq,6:quality,7:NA,8:misInfo)\\neland_result - output from basic eland\\n(1:read name,2:seq,3:code,4:#zeroMM,5:#oneMM,6:#twoMM,7:chr,\\n8:position,9:F/R,10-:mismatches\\neland_export - output from illumina pipeline (22 columns total)\\n(1-5:read name info,9:sequence,10:quality,11:chr,13:position,14:strand)\\neland_extended - output from illumina pipeline (4 columns total)\\n(1:read name,2:sequence,3:match stats,4:positions[,])\\nmCpGbed - encode style mCpG reporting in extended BED format, no auto-detect\\n(1:chr,2:start,3:end,4:name,5:,6:+/-,7:,8:,9:,10:#C,11:#mC)\\nallC - Lister style output files detailing the read information about all cytosines\\n(1:chr,2:pos,3:strand,4:context,#mC,#totalC,#unmC\\nbismark - Bismark style output files detailing the read information about all cytosines\\n(1:chr,2:pos,3:strand,4:#mC,5:#unmC,6:context,7:triseq\\n-minCounts <#> (minimum number of reads to report mC/C ratios, default: 10)\\n-mCcontext <CG|CHG|CHH|all> (only use C's in this context, default: CG)\\nHiCsummary - minimal paired-end read mapping information\\n(1:readname,2:chr1,3:5'pos1,4:strand1,5:chr2,6:5'pos2,7:strand2)"
    flip: "(flip strand of each read, i.e. might want to use with some RNA-seq)"
    total_reads: "<#|all|default> (set the effective total number of reads - all includes multimappers)"
    force_five_th: "(5th column of BED file contains # of reads mapping to position)"
    add_tag_directory: "[tag directory 2] ... (add Tag directory to new tag directory)"
    add_tag_file: "[tag file 2] ... (add tag file i.e. *.tags.tsv to new tag directory)"
    single: "(Create a single tags.tsv file for all \\\"chromosomes\\\" - i.e. if >100 chromosomes)"
    update: "(Use current tag directory for QC/processing, do not parse new alignment files)"
    tbp: "<#> (Maximum tags per bp, default: no maximum)"
    precision: "(number of decimal places to use for tag totals, default: 1)"
    min_len: "<#> and -maxlen <#> (Filter reads with lengths outside this range)"
    genome: "(To see available genomes, use \\\"-genome list\\\")"
    or: "(for custom genomes):"
    check_gc: "(check Sequence bias, requires \\\"-genome\\\")"
    freq_start: "<#> (offset to start calculating frequency, default: -50)"
    freq_end: "<#> (distance past fragment length to calculate frequency, default: +50)"
    oligo_start: "<#> (oligo bias start)"
    oligo_end: "<#> (oligo bias end)"
    norm_gc: "(i.e. tagGCcontent.txt file from control experiment)\\nUse \\\"-normGC default\\\" to match the genomic GC distribution"
    norm_fixed_oligo: "(normalize 5' end bias, \\\"-normFixedOligo default\\\" ok)"
    norm_length: "(i.e. tagLengthDistribution.txt file from control experiment)"
    min_norm_ratio: "<#> (Minimum deflation ratio of tag counts, default: 0.25)"
    max_norm_ratio: "<#> (Maximum inflation ratio of tag counts, default: 2.0)"
    iter_norm: "<#> (Sets -max/minNormRatio to 1 and 0, iteratively normalizes such that the\\nresulting distrubtion is no more than #% different than target, i.e. 0.1,default: off)"
    filter_reads: "<offset> <keep|remove> (filter reads based on oligo sequence in the genome)"
    remove_pe_bg: "(remove paired end tags within 1.5x fragment length on same chr)"
    pe_bg_length: "<#> (remove PE  reads facing on another within this distance, default: 1.5x fragLen)"
    restriction_site: "(i.e. AAGCTT for HindIII, assign data < 1.5x fragment length to sites)\\nMust specify genome sequence directory too. (-rsmis <#> to specify mismatches, def: 0)\\n-both, -one, -onlyOne, -none (Keeps reads near restriction sites, default: keep all)\\n-removeSelfLigation (removes reads linking same restriction fragment)\\n-removeRestrictionEnds (removes reads starting on a restriction fragment)\\n-assignMidPoint (will place reads in the middle of HindIII fragments)\\n-restrictionSiteLength <#> (maximum distance from restriction site, default: 1.5x fragLen)"
    remove_spikes: "<#> (remove tags from regions with > than # times\\nthe average tags per size bp, suggest \\\"-removeSpikes 10000 8\\\")"
    bowtie_pe: "(PE alignments in bowtie alignment, assumes last character of read name is 0 or 1)\\n(don't need this for sam/bam files)\\n"
    directory: ""
    alignment_file_one: ""
    var_file: ""
    two: ""
  }
  output {
    File out_stdout = stdout()
  }
}