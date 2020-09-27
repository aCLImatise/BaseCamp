class: CommandLineTool
id: makeTagDirectory.cwl
inputs:
- id: in_frag_length
  doc: "<# | given | pe> (Set estimated fragment length or use PE length - given:\
    \ use read lengths)\nBy default treats the sample as a single read ChIP-Seq experiment"
  type: boolean
  inputBinding:
    prefix: -fragLength
- id: in_format
  doc: "where X can be: (with column specifications underneath)\nbed - BED format\
    \ files:\n(1:chr,2:start,3:end,4:+/- or read name,5:# tags,6:+/-)\n-force5th (5th\
    \ column of BED file contains # of reads mapping to position)\nsam - SAM formatted\
    \ files (use samTools to covert BAMs into SAM if you have BAM)\n-unique (keep\
    \ if there is a single best alignment based on mapq)\n-mapq <#> (Minimum mapq\
    \ for -unique, default: 10, set negative to use AS:i:/XS:i:)\n-keepOne (keep one\
    \ of the best alignments even if others exist)\n-keepAll (include all alignments\
    \ in SAM file)\n-mis (Maximum allowed mismatches, default: no limit, uses MD:Z:\
    \ tag)\n-sspe (strand specific, paired-end reads[flips strand of 2nd read to match])\n\
    -read1/-read2 (only analyze 1st or 2nd read for PE sequencing)\n-rmsoft (clip\
    \ soft clipped regions from reads, default: assume read extends/mismatch)\n-omitSN\
    \ (ignore alignments with splicing/soft clipping, i.e. use for csRNA-seq)\nbowtie\
    \ - output from bowtie (run with --best -k 2 options)\n(1:read name,2:+/-,3:chr,4:position,5:seq,6:quality,7:NA,8:misInfo)\n\
    eland_result - output from basic eland\n(1:read name,2:seq,3:code,4:#zeroMM,5:#oneMM,6:#twoMM,7:chr,\n\
    8:position,9:F/R,10-:mismatches\neland_export - output from illumina pipeline\
    \ (22 columns total)\n(1-5:read name info,9:sequence,10:quality,11:chr,13:position,14:strand)\n\
    eland_extended - output from illumina pipeline (4 columns total)\n(1:read name,2:sequence,3:match\
    \ stats,4:positions[,])\nmCpGbed - encode style mCpG reporting in extended BED\
    \ format, no auto-detect\n(1:chr,2:start,3:end,4:name,5:,6:+/-,7:,8:,9:,10:#C,11:#mC)\n\
    allC - Lister style output files detailing the read information about all cytosines\n\
    (1:chr,2:pos,3:strand,4:context,#mC,#totalC,#unmC\nbismark - Bismark style output\
    \ files detailing the read information about all cytosines\n(1:chr,2:pos,3:strand,4:#mC,5:#unmC,6:context,7:triseq\n\
    -minCounts <#> (minimum number of reads to report mC/C ratios, default: 10)\n\
    -mCcontext <CG|CHG|CHH|all> (only use C's in this context, default: CG)\nHiCsummary\
    \ - minimal paired-end read mapping information\n(1:readname,2:chr1,3:5'pos1,4:strand1,5:chr2,6:5'pos2,7:strand2)"
  type: long
  inputBinding:
    prefix: -format
- id: in_flip
  doc: (flip strand of each read, i.e. might want to use with some RNA-seq)
  type: boolean
  inputBinding:
    prefix: -flip
- id: in_total_reads
  doc: <#|all|default> (set the effective total number of reads - all includes multimappers)
  type: boolean
  inputBinding:
    prefix: -totalReads
- id: in_force_five_th
  doc: '(5th column of BED file contains # of reads mapping to position)'
  type: boolean
  inputBinding:
    prefix: -force5th
- id: in_add_tag_directory
  doc: '[tag directory 2] ... (add Tag directory to new tag directory)'
  type: Directory
  inputBinding:
    prefix: -d
- id: in_add_tag_file
  doc: '[tag file 2] ... (add tag file i.e. *.tags.tsv to new tag directory)'
  type: File
  inputBinding:
    prefix: -t
- id: in_single
  doc: (Create a single tags.tsv file for all "chromosomes" - i.e. if >100 chromosomes)
  type: boolean
  inputBinding:
    prefix: -single
- id: in_update
  doc: (Use current tag directory for QC/processing, do not parse new alignment files)
  type: boolean
  inputBinding:
    prefix: -update
- id: in_tbp
  doc: '<#> (Maximum tags per bp, default: no maximum)'
  type: boolean
  inputBinding:
    prefix: -tbp
- id: in_precision
  doc: '(number of decimal places to use for tag totals, default: 1)'
  type: long
  inputBinding:
    prefix: -precision
- id: in_min_len
  doc: <#> and -maxlen <#> (Filter reads with lengths outside this range)
  type: boolean
  inputBinding:
    prefix: -minlen
- id: in_remove_pe_bg
  doc: (remove paired end tags within 1.5x fragment length on same chr)
  type: boolean
  inputBinding:
    prefix: -removePEbg
- id: in_pe_bg_length
  doc: '<#> (remove PE  reads facing on another within this distance, default: 1.5x
    fragLen)'
  type: boolean
  inputBinding:
    prefix: -PEbgLength
- id: in_restriction_site
  doc: "(i.e. AAGCTT for HindIII, assign data < 1.5x fragment length to sites)\nMust\
    \ specify genome sequence directory too. (-rsmis <#> to specify mismatches, def:\
    \ 0)\n-both, -one, -onlyOne, -none (Keeps reads near restriction sites, default:\
    \ keep all)\n-removeSelfLigation (removes reads linking same restriction fragment)\n\
    -removeRestrictionEnds (removes reads starting on a restriction fragment)\n-assignMidPoint\
    \ (will place reads in the middle of HindIII fragments)\n-restrictionSiteLength\
    \ <#> (maximum distance from restriction site, default: 1.5x fragLen)"
  type: long
  inputBinding:
    prefix: -restrictionSite
- id: in_remove_spikes
  doc: "<#> (remove tags from regions with > than # times\nthe average tags per size\
    \ bp, suggest \"-removeSpikes 10000 8\")"
  type: long
  inputBinding:
    prefix: -removeSpikes
- id: in_bowtie_pe
  doc: "(PE alignments in bowtie alignment, assumes last character of read name is\
    \ 0 or 1)\n(don't need this for sam/bam files)\n"
  type: boolean
  inputBinding:
    prefix: -bowtiePE
- id: in_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_alignment_file_one
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_two
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makeTagDirectory
