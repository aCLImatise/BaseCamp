class: CommandLineTool
id: mcall.cwl
inputs:
- id: m
  doc: '[ --mappedFiles ] arg           Specify the names of RRBS/WGBS alignment  files
    for methylation calling. Multiple  files can be provided to combine them(eg.  lanes
    or replicates) into a single track;'
  type: boolean
  inputBinding:
    prefix: -m
- id: sample_name
  doc: If two or more mappedFiles are specifed,  this option generates a merged result;  Ignored
    for one input file;
  type: string
  inputBinding:
    prefix: --sampleName
- id: output_dir
  doc: The name of the output directory;
  type: string
  inputBinding:
    prefix: --outputDir
- id: web_output_dir
  doc: The name of the web-accessible output  directory for UCSC Genome Browser tracks;
  type: string
  inputBinding:
    prefix: --webOutputDir
- id: g
  doc: '[ --genome ] arg                The UCSC Genome Browser identifier of  source
    genome assembly; mm9 for example;'
  type: boolean
  inputBinding:
    prefix: -g
- id: r
  doc: "[ --reference ] arg             Reference DNA fasta file; It's required if\
    \ CHG methylation is wanted;"
  type: boolean
  inputBinding:
    prefix: -r
- id: cytosine_min_score
  doc: '(=20)       Threshold for cytosine quality score  (default: 20). Discard the
    base if  threshold is not reached;'
  type: string
  inputBinding:
    prefix: --cytosineMinScore
- id: nextbase_min_score
  doc: '(=3)        Threshold for the next base quality  score(default: 3,ie, better
    than B or #);  Possible values: -1 makes the program not  to check if next base
    matches reference;  any positive integer or zero makes the  program to check if
    next base matches  reference and reaches this score  threshold;'
  type: string
  inputBinding:
    prefix: --nextBaseMinScore
- id: quality_score_base
  doc: '(=0)        Specify quality score system: 0 means  autodetection; Sanger=>33;Solexa=>59;Illum
    ina=>64; See wiki FASTQ_format for  details;'
  type: string
  inputBinding:
    prefix: --qualityScoreBase
- id: trimwgbsendrepairpe2seq
  doc: '(=3) How to trim end-repair sequence from begin of +-/-- reads from Pair End
    WGBS  Sequencing; 0: no trim; n(positive  integer): trim n bases from begin of
    +-/-- reads; -2: model determined n; -1: trim  from beginning to before 1st methylated
    C; Suggest 3; n>readLen is equivalent to use  PE1 reads;'
  type: string
  inputBinding:
    prefix: --trimWGBSEndRepairPE2Seq
- id: trimwgbsendrepairpe1seq
  doc: '(=3) How to trim end-repair sequence from end   of ++/-+ reads from Pair End
    WGBS  Sequencing; 0: no trim; n(positive  integer): trim n + NM bases from end
    of  ++/-+ reads if fragSize <= maxReadLen; -2: model determined n; Suggest 3;'
  type: string
  inputBinding:
    prefix: --trimWGBSEndRepairPE1Seq
- id: process_pe_overlap_seq
  doc: (=1)     1/0 makes the program count once/twice the overlap seq of two pairs;
  type: string
  inputBinding:
    prefix: --processPEOverlapSeq
- id: trim_rrb_send_repair_seq
  doc: '(=2)    How to trim end-repair sequence for RRBS  reads; RRBS or WGBS protocol
    can be  automatically detected; 0: no trim; 2:  trim the last CG at exactly end
    of ++/-+  reads and trim the first CG at exactly  begin of +-/-- reads like the
    WGBS  situation;'
  type: string
  inputBinding:
    prefix: --trimRRBSEndRepairSeq
- id: skip_random_chrom
  doc: (=1)         Specify whether to skip random and hadrop  chrom;
  type: string
  inputBinding:
    prefix: --skipRandomChrom
- id: f
  doc: '[ --requiredFlag ] arg (=0)     Requiring samtools flag; 0x2(properly  paried),
    0x40(PE1), 0x80(PE2), 0x100(not  unique), r=0x10(reverse); Examples: -f  0x10
    <=> +-/-+ (Right) reads; -f 0x40 <=>  ++/-+ (PE1) reads; -f 0x50 <=> -+ read;
    -f 0x90 <=> +- read;'
  type: boolean
  inputBinding:
    prefix: -f
- id: f
  doc: '[ --excludedFlag ] arg (=0)     Excluding samtools flag; Examples: -f 0x2  -F
    0x100 <=> uniquely mapped pairs; -F  0x10 <=> ++/-- (Left) reads; -F 0x40 <=>  -f
    0x80 +-/-- (PE2) reads; -f 0x40 -F 0x10 <=> ++ read; -f 0x80 -F 0x10 <=> -- read; '
  type: boolean
  inputBinding:
    prefix: -F
- id: min_frag_size
  doc: (=0)             Requiring min fragment size, the 9th field in sam file; Since
    non-properly-paired  read has 0 at 9th field, setting this  option is requiring
    properly paired and  large enough fragment size;
  type: string
  inputBinding:
    prefix: --minFragSize
- id: min_mm_frag_size
  doc: (=0)           Requiring min fragment size for multiply  matched read; Same
    as option above but  only this option is only applicable to  reads with flag 0x100
    set as 1;
  type: string
  inputBinding:
    prefix: --minMMFragSize
- id: report_cpx
  doc: (=G)               X=G generates a file for CpG methylation;  A/C/T generates
    file for CpA/CpC/CpT meth;
  type: string
  inputBinding:
    prefix: --reportCpX
- id: report_chx
  doc: (=X)               X=G generates a file for CHG methylation;  A/C/T generates
    file for CHA/CHC/CHT meth; This file is large;
  type: string
  inputBinding:
    prefix: --reportCHX
- id: a
  doc: '[ --fullMode ] arg (=0)         Specify whether to turn on full mode.  Off(0):
    only *.G.bed, *.HG.bed and  *_stat.txt are allowed to be generated.  On(1): file
    *.HG.bed, *.bed, *_skip.bed,  and *_strand.bed are forced to be  generated. Extremely
    large files will be  generated at fullMode.'
  type: boolean
  inputBinding:
    prefix: -a
- id: stats_only
  doc: '(=0)               Off(0): no effect. On(1): only *_stat.txt  is generated.'
  type: string
  inputBinding:
    prefix: --statsOnly
- id: keep_temp
  doc: (=0)                Specify whether to keep temp files;
  type: string
  inputBinding:
    prefix: --keepTemp
- id: p
  doc: '[ --threads ] arg (=1)          Number of threads on all mapped file.  Suggest
    1~8 on EACH input file depending  RAM size and disk speed.'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- mcall
