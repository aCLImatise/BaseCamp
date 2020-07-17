version 1.0

task Mcall {
  input {
    Boolean? arg_specify_names
    String? sample_name
    String? output_dir
    String? web_output_dir
    Boolean? arg_ucsc_genome
    Boolean? arg_reference_dna
    String? cytosine_min_score
    String? nextbase_min_score
    String? quality_score_base
    String? trim_wgb_send_repair_pe_two_seq
    String? trim_wgb_send_repair_pe_one_seq
    String? process_pe_overlap_seq
    String? trim_rrb_send_repair_seq
    String? skip_random_chrom
    Boolean? arg_requiring_samtools
    Boolean? arg_excluding_samtools
    String? min_frag_size
    String? min_mm_frag_size
    String? report_cpx
    String? report_chx
    Boolean? arg_specify_turn
    String? stats_only
    String? keep_temp
    Boolean? arg_number_threads
  }
  command <<<
    mcall \
      ~{true="-m" false="" arg_specify_names} \
      ~{if defined(sample_name) then ("--sampleName " +  '"' + sample_name + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(web_output_dir) then ("--webOutputDir " +  '"' + web_output_dir + '"') else ""} \
      ~{true="-g" false="" arg_ucsc_genome} \
      ~{true="-r" false="" arg_reference_dna} \
      ~{if defined(cytosine_min_score) then ("--cytosineMinScore " +  '"' + cytosine_min_score + '"') else ""} \
      ~{if defined(nextbase_min_score) then ("--nextBaseMinScore " +  '"' + nextbase_min_score + '"') else ""} \
      ~{if defined(quality_score_base) then ("--qualityScoreBase " +  '"' + quality_score_base + '"') else ""} \
      ~{if defined(trim_wgb_send_repair_pe_two_seq) then ("--trimWGBSEndRepairPE2Seq " +  '"' + trim_wgb_send_repair_pe_two_seq + '"') else ""} \
      ~{if defined(trim_wgb_send_repair_pe_one_seq) then ("--trimWGBSEndRepairPE1Seq " +  '"' + trim_wgb_send_repair_pe_one_seq + '"') else ""} \
      ~{if defined(process_pe_overlap_seq) then ("--processPEOverlapSeq " +  '"' + process_pe_overlap_seq + '"') else ""} \
      ~{if defined(trim_rrb_send_repair_seq) then ("--trimRRBSEndRepairSeq " +  '"' + trim_rrb_send_repair_seq + '"') else ""} \
      ~{if defined(skip_random_chrom) then ("--skipRandomChrom " +  '"' + skip_random_chrom + '"') else ""} \
      ~{true="-f" false="" arg_requiring_samtools} \
      ~{true="-F" false="" arg_excluding_samtools} \
      ~{if defined(min_frag_size) then ("--minFragSize " +  '"' + min_frag_size + '"') else ""} \
      ~{if defined(min_mm_frag_size) then ("--minMMFragSize " +  '"' + min_mm_frag_size + '"') else ""} \
      ~{if defined(report_cpx) then ("--reportCpX " +  '"' + report_cpx + '"') else ""} \
      ~{if defined(report_chx) then ("--reportCHX " +  '"' + report_chx + '"') else ""} \
      ~{true="-a" false="" arg_specify_turn} \
      ~{if defined(stats_only) then ("--statsOnly " +  '"' + stats_only + '"') else ""} \
      ~{if defined(keep_temp) then ("--keepTemp " +  '"' + keep_temp + '"') else ""} \
      ~{true="-p" false="" arg_number_threads}
  >>>
  parameter_meta {
    arg_specify_names: "[ --mappedFiles ] arg           Specify the names of RRBS/WGBS alignment  files for methylation calling. Multiple  files can be provided to combine them(eg.  lanes or replicates) into a single track;"
    sample_name: "If two or more mappedFiles are specifed,  this option generates a merged result;  Ignored for one input file;"
    output_dir: "The name of the output directory;"
    web_output_dir: "The name of the web-accessible output  directory for UCSC Genome Browser tracks;"
    arg_ucsc_genome: "[ --genome ] arg                The UCSC Genome Browser identifier of  source genome assembly; mm9 for example;"
    arg_reference_dna: "[ --reference ] arg             Reference DNA fasta file; It's required if CHG methylation is wanted;"
    cytosine_min_score: "(=20)       Threshold for cytosine quality score  (default: 20). Discard the base if  threshold is not reached;"
    nextbase_min_score: "(=3)        Threshold for the next base quality  score(default: 3,ie, better than B or #);  Possible values: -1 makes the program not  to check if next base matches reference;  any positive integer or zero makes the  program to check if next base matches  reference and reaches this score  threshold;"
    quality_score_base: "(=0)        Specify quality score system: 0 means  autodetection; Sanger=>33;Solexa=>59;Illum ina=>64; See wiki FASTQ_format for  details;"
    trim_wgb_send_repair_pe_two_seq: "(=3) How to trim end-repair sequence from begin of +-/-- reads from Pair End WGBS  Sequencing; 0: no trim; n(positive  integer): trim n bases from begin of +-/-- reads; -2: model determined n; -1: trim  from beginning to before 1st methylated C; Suggest 3; n>readLen is equivalent to use  PE1 reads;"
    trim_wgb_send_repair_pe_one_seq: "(=3) How to trim end-repair sequence from end   of ++/-+ reads from Pair End WGBS  Sequencing; 0: no trim; n(positive  integer): trim n + NM bases from end of  ++/-+ reads if fragSize <= maxReadLen; -2: model determined n; Suggest 3;"
    process_pe_overlap_seq: "(=1)     1/0 makes the program count once/twice the overlap seq of two pairs;"
    trim_rrb_send_repair_seq: "(=2)    How to trim end-repair sequence for RRBS  reads; RRBS or WGBS protocol can be  automatically detected; 0: no trim; 2:  trim the last CG at exactly end of ++/-+  reads and trim the first CG at exactly  begin of +-/-- reads like the WGBS  situation;"
    skip_random_chrom: "(=1)         Specify whether to skip random and hadrop  chrom;"
    arg_requiring_samtools: "[ --requiredFlag ] arg (=0)     Requiring samtools flag; 0x2(properly  paried), 0x40(PE1), 0x80(PE2), 0x100(not  unique), r=0x10(reverse); Examples: -f  0x10 <=> +-/-+ (Right) reads; -f 0x40 <=>  ++/-+ (PE1) reads; -f 0x50 <=> -+ read; -f 0x90 <=> +- read;"
    arg_excluding_samtools: "[ --excludedFlag ] arg (=0)     Excluding samtools flag; Examples: -f 0x2  -F 0x100 <=> uniquely mapped pairs; -F  0x10 <=> ++/-- (Left) reads; -F 0x40 <=>  -f 0x80 +-/-- (PE2) reads; -f 0x40 -F 0x10 <=> ++ read; -f 0x80 -F 0x10 <=> -- read; "
    min_frag_size: "(=0)             Requiring min fragment size, the 9th field in sam file; Since non-properly-paired  read has 0 at 9th field, setting this  option is requiring properly paired and  large enough fragment size;"
    min_mm_frag_size: "(=0)           Requiring min fragment size for multiply  matched read; Same as option above but  only this option is only applicable to  reads with flag 0x100 set as 1;"
    report_cpx: "(=G)               X=G generates a file for CpG methylation;  A/C/T generates file for CpA/CpC/CpT meth;"
    report_chx: "(=X)               X=G generates a file for CHG methylation;  A/C/T generates file for CHA/CHC/CHT meth; This file is large;"
    arg_specify_turn: "[ --fullMode ] arg (=0)         Specify whether to turn on full mode.  Off(0): only *.G.bed, *.HG.bed and  *_stat.txt are allowed to be generated.  On(1): file *.HG.bed, *.bed, *_skip.bed,  and *_strand.bed are forced to be  generated. Extremely large files will be  generated at fullMode."
    stats_only: "(=0)               Off(0): no effect. On(1): only *_stat.txt  is generated."
    keep_temp: "(=0)                Specify whether to keep temp files;"
    arg_number_threads: "[ --threads ] arg (=1)          Number of threads on all mapped file.  Suggest 1~8 on EACH input file depending  RAM size and disk speed."
  }
}