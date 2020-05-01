#!/usr/bin/env cwl-runner

baseCommand:
- mcall
class: CommandLineTool
cwlVersion: v1.0
id: mcall
inputs:
- doc: '[ --mappedFiles ] arg           Specify the names of RRBS/WGBS alignment  files
    for methylation calling. Multiple  files can be provided to combine them(eg.  lanes
    or replicates) into a single track;'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: If two or more mappedFiles are specifed,  this option generates a merged result;  Ignored
    for one input file;
  id: sample_name
  inputBinding:
    prefix: --sampleName
  type: string
- doc: The name of the output directory;
  id: output_dir
  inputBinding:
    prefix: --outputDir
  type: string
- doc: The name of the web-accessible output  directory for UCSC Genome Browser tracks;
  id: web_output_dir
  inputBinding:
    prefix: --webOutputDir
  type: string
- doc: '[ --genome ] arg                The UCSC Genome Browser identifier of  source
    genome assembly; mm9 for example;'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: "[ --reference ] arg             Reference DNA fasta file; It's required if\
    \ CHG methylation is wanted;"
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '(=20)       Threshold for cytosine quality score  (default: 20). Discard the
    base if  threshold is not reached;'
  id: cytosine_min_score
  inputBinding:
    prefix: --cytosineMinScore
  type: string
- doc: '(=3)        Threshold for the next base quality  score(default: 3,ie, better
    than B or #);  Possible values: -1 makes the program not  to check if next base
    matches reference;  any positive integer or zero makes the  program to check if
    next base matches  reference and reaches this score  threshold;'
  id: nextbase_min_score
  inputBinding:
    prefix: --nextBaseMinScore
  type: string
- doc: '(=0)        Specify quality score system: 0 means  autodetection; Sanger=>33;Solexa=>59;Illum
    ina=>64; See wiki FASTQ_format for  details;'
  id: quality_score_base
  inputBinding:
    prefix: --qualityScoreBase
  type: string
- doc: '(=3) How to trim end-repair sequence from begin of +-/-- reads from Pair End
    WGBS  Sequencing; 0: no trim; n(positive  integer): trim n bases from begin of
    +-/-- reads; -2: model determined n; -1: trim  from beginning to before 1st methylated
    C; Suggest 3; n>readLen is equivalent to use  PE1 reads;'
  id: trimwgbsendrepairpe2seq
  inputBinding:
    prefix: --trimWGBSEndRepairPE2Seq
  type: string
- doc: '(=3) How to trim end-repair sequence from end   of ++/-+ reads from Pair End
    WGBS  Sequencing; 0: no trim; n(positive  integer): trim n + NM bases from end
    of  ++/-+ reads if fragSize <= maxReadLen; -2: model determined n; Suggest 3;'
  id: trimwgbsendrepairpe1seq
  inputBinding:
    prefix: --trimWGBSEndRepairPE1Seq
  type: string
- doc: (=1)     1/0 makes the program count once/twice the overlap seq of two pairs;
  id: process_pe_overlap_seq
  inputBinding:
    prefix: --processPEOverlapSeq
  type: string
- doc: '(=2)    How to trim end-repair sequence for RRBS  reads; RRBS or WGBS protocol
    can be  automatically detected; 0: no trim; 2:  trim the last CG at exactly end
    of ++/-+  reads and trim the first CG at exactly  begin of +-/-- reads like the
    WGBS  situation;'
  id: trim_rrb_send_repair_seq
  inputBinding:
    prefix: --trimRRBSEndRepairSeq
  type: string
- doc: (=1)         Specify whether to skip random and hadrop  chrom;
  id: skip_random_chrom
  inputBinding:
    prefix: --skipRandomChrom
  type: string
- doc: '[ --requiredFlag ] arg (=0)     Requiring samtools flag; 0x2(properly  paried),
    0x40(PE1), 0x80(PE2), 0x100(not  unique), r=0x10(reverse); Examples: -f  0x10
    <=> +-/-+ (Right) reads; -f 0x40 <=>  ++/-+ (PE1) reads; -f 0x50 <=> -+ read;
    -f 0x90 <=> +- read;'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --excludedFlag ] arg (=0)     Excluding samtools flag; Examples: -f 0x2  -F
    0x100 <=> uniquely mapped pairs; -F  0x10 <=> ++/-- (Left) reads; -F 0x40 <=>  -f
    0x80 +-/-- (PE2) reads; -f 0x40 -F 0x10 <=> ++ read; -f 0x80 -F 0x10 <=> -- read; '
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: (=0)             Requiring min fragment size, the 9th field in sam file; Since
    non-properly-paired  read has 0 at 9th field, setting this  option is requiring
    properly paired and  large enough fragment size;
  id: min_frag_size
  inputBinding:
    prefix: --minFragSize
  type: string
- doc: (=0)           Requiring min fragment size for multiply  matched read; Same
    as option above but  only this option is only applicable to  reads with flag 0x100
    set as 1;
  id: min_mm_frag_size
  inputBinding:
    prefix: --minMMFragSize
  type: string
- doc: (=G)               X=G generates a file for CpG methylation;  A/C/T generates
    file for CpA/CpC/CpT meth;
  id: report_cpx
  inputBinding:
    prefix: --reportCpX
  type: string
- doc: (=X)               X=G generates a file for CHG methylation;  A/C/T generates
    file for CHA/CHC/CHT meth; This file is large;
  id: report_chx
  inputBinding:
    prefix: --reportCHX
  type: string
- doc: '[ --fullMode ] arg (=0)         Specify whether to turn on full mode.  Off(0):
    only *.G.bed, *.HG.bed and  *_stat.txt are allowed to be generated.  On(1): file
    *.HG.bed, *.bed, *_skip.bed,  and *_strand.bed are forced to be  generated. Extremely
    large files will be  generated at fullMode.'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '(=0)               Off(0): no effect. On(1): only *_stat.txt  is generated.'
  id: stats_only
  inputBinding:
    prefix: --statsOnly
  type: string
- doc: (=0)                Specify whether to keep temp files;
  id: keep_temp
  inputBinding:
    prefix: --keepTemp
  type: string
- doc: '[ --threads ] arg (=1)          Number of threads on all mapped file.  Suggest
    1~8 on EACH input file depending  RAM size and disk speed.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
