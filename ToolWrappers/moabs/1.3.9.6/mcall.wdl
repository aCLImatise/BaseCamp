version 1.0

task Mcall {
  input {
    Boolean? arg_specify_names
    File? sample_name
    Directory? output_dir
    Directory? web_output_dir
    Boolean? arg_ucsc_genome
    Boolean? arg_reference_dna
    Int? cytosine_min_score
    Int? nextbase_min_score
    Int? quality_score_base
    Int? trim_wgb_send_repair_pe_two_seq
    Int? trim_wgb_send_repair_pe_one_seq
    Int? process_pe_overlap_seq
    Int? trim_rrb_send_repair_seq
    Int? skip_random_chrom
    Boolean? arg_requiring_samtools
    Int? min_frag_size
    Int? min_mm_frag_size
    File? report_cpx
    File? report_chx
    Boolean? arg_specify_turn
    Int? stats_only
    File? stat_split
    Int? keep_temp
    Boolean? arg_number_threads
  }
  command <<<
    mcall \
      ~{if (arg_specify_names) then "-m" else ""} \
      ~{if defined(sample_name) then ("--sampleName " +  '"' + sample_name + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(web_output_dir) then ("--webOutputDir " +  '"' + web_output_dir + '"') else ""} \
      ~{if (arg_ucsc_genome) then "-g" else ""} \
      ~{if (arg_reference_dna) then "-r" else ""} \
      ~{if defined(cytosine_min_score) then ("--cytosineMinScore " +  '"' + cytosine_min_score + '"') else ""} \
      ~{if defined(nextbase_min_score) then ("--nextBaseMinScore " +  '"' + nextbase_min_score + '"') else ""} \
      ~{if defined(quality_score_base) then ("--qualityScoreBase " +  '"' + quality_score_base + '"') else ""} \
      ~{if defined(trim_wgb_send_repair_pe_two_seq) then ("--trimWGBSEndRepairPE2Seq " +  '"' + trim_wgb_send_repair_pe_two_seq + '"') else ""} \
      ~{if defined(trim_wgb_send_repair_pe_one_seq) then ("--trimWGBSEndRepairPE1Seq " +  '"' + trim_wgb_send_repair_pe_one_seq + '"') else ""} \
      ~{if defined(process_pe_overlap_seq) then ("--processPEOverlapSeq " +  '"' + process_pe_overlap_seq + '"') else ""} \
      ~{if defined(trim_rrb_send_repair_seq) then ("--trimRRBSEndRepairSeq " +  '"' + trim_rrb_send_repair_seq + '"') else ""} \
      ~{if defined(skip_random_chrom) then ("--skipRandomChrom " +  '"' + skip_random_chrom + '"') else ""} \
      ~{if (arg_requiring_samtools) then "-f" else ""} \
      ~{if defined(min_frag_size) then ("--minFragSize " +  '"' + min_frag_size + '"') else ""} \
      ~{if defined(min_mm_frag_size) then ("--minMMFragSize " +  '"' + min_mm_frag_size + '"') else ""} \
      ~{if defined(report_cpx) then ("--reportCpX " +  '"' + report_cpx + '"') else ""} \
      ~{if defined(report_chx) then ("--reportCHX " +  '"' + report_chx + '"') else ""} \
      ~{if (arg_specify_turn) then "-a" else ""} \
      ~{if defined(stats_only) then ("--statsOnly " +  '"' + stats_only + '"') else ""} \
      ~{if defined(stat_split) then ("--statSplit " +  '"' + stat_split + '"') else ""} \
      ~{if defined(keep_temp) then ("--keepTemp " +  '"' + keep_temp + '"') else ""} \
      ~{if (arg_number_threads) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_specify_names: "[ --mappedFiles ] arg           Specify the names of RRBS/WGBS alignment\\nfiles for methylation calling. Multiple\\nfiles can be provided to combine them(eg.\\nlanes or replicates) into a single track;"
    sample_name: "If two or more mappedFiles are specifed,\\nthis option generates a merged result;\\nIgnored for one input file;"
    output_dir: "The name of the output directory;"
    web_output_dir: "The name of the web-accessible output\\ndirectory for UCSC Genome Browser tracks;"
    arg_ucsc_genome: "[ --genome ] arg                The UCSC Genome Browser identifier of\\nsource genome assembly; mm9 for example;"
    arg_reference_dna: "[ --reference ] arg             Reference DNA fasta file; It's required if\\nCHG methylation is wanted;"
    cytosine_min_score: "(=20)       Threshold for cytosine quality score\\n(default: 20). Discard the base if\\nthreshold is not reached;"
    nextbase_min_score: "(=3)        Threshold for the next base quality\\nscore(default: 3,ie, better than B or #);\\nPossible values: -1 makes the program not\\nto check if next base matches reference;\\nany positive integer or zero makes the\\nprogram to check if next base matches\\nreference and reaches this score\\nthreshold;"
    quality_score_base: "(=0)        Specify quality score system: 0 means\\nautodetection; Sanger=>33;Solexa=>59;Illum\\nina=>64; See wiki FASTQ_format for\\ndetails;"
    trim_wgb_send_repair_pe_two_seq: "(=3) How to trim end-repair sequence from begin\\nof +-/-- reads from Pair End WGBS\\nSequencing; 0: no trim; n(positive\\ninteger): trim n bases from begin of +-/--\\nreads; -2: model determined n; -1: trim\\nfrom beginning to before 1st methylated C;\\nSuggest 3; n>readLen is equivalent to use\\nPE1 reads;"
    trim_wgb_send_repair_pe_one_seq: "(=3) How to trim end-repair sequence from end\\nof ++/-+ reads from Pair End WGBS\\nSequencing; 0: no trim; n(positive\\ninteger): trim n + NM bases from end of\\n++/-+ reads if fragSize <= maxReadLen; -2:\\nmodel determined n; Suggest 3;"
    process_pe_overlap_seq: "(=1)     1/0 makes the program count once/twice the\\noverlap seq of two pairs;"
    trim_rrb_send_repair_seq: "(=2)    How to trim end-repair sequence for RRBS\\nreads; RRBS or WGBS protocol can be\\nautomatically detected; 0: no trim; 2:\\ntrim the last CG at exactly end of ++/-+\\nreads and trim the first CG at exactly\\nbegin of +-/-- reads like the WGBS\\nsituation;"
    skip_random_chrom: "(=1)         Specify whether to skip random and hadrop\\nchrom;"
    arg_requiring_samtools: "[ --requiredFlag ] arg (=0)     Requiring samtools flag; 0x2(properly\\nparied), 0x40(PE1), 0x80(PE2), 0x100(not\\nunique), r=0x10(reverse); Examples: -f\\n0x10 <=> +-/-+ (Right) reads; -f 0x40 <=>\\n++/-+ (PE1) reads; -f 0x50 <=> -+ read; -f\\n0x90 <=> +- read;"
    min_frag_size: "(=0)             Requiring min fragment size, the 9th field\\nin sam file; Since non-properly-paired\\nread has 0 at 9th field, setting this\\noption is requiring properly paired and\\nlarge enough fragment size;"
    min_mm_frag_size: "(=0)           Requiring min fragment size for multiply\\nmatched read; Same as option above but\\nonly this option is only applicable to\\nreads with flag 0x100 set as 1;"
    report_cpx: "(=G)               X=G generates a file for CpG methylation;\\nA/C/T generates file for CpA/CpC/CpT meth;"
    report_chx: "(=X)               X=G generates a file for CHG methylation;\\nA/C/T generates file for CHA/CHC/CHT meth;\\nThis file is large;"
    arg_specify_turn: "[ --fullMode ] arg (=0)         Specify whether to turn on full mode.\\nOff(0): only *.G.bed, *.HG.bed and\\n*_stat.txt are allowed to be generated.\\nOn(1): file *.HG.bed, *.bed, *_skip.bed,\\nand *_strand.bed are forced to be\\ngenerated. Extremely large files will be\\ngenerated at fullMode."
    stats_only: "(=0)               Off(0): no effect. On(1): only *_stat.txt\\nis generated."
    stat_split: "To split statistics file by chromosome\\ngroups. Chromosomes in a group are\\nseparated by `,`, and groups are separated\\nby `/`. For example, `--statSplit\\nchr1,chr2,chr3/chrLambda`. This example\\nwill generate two or three statistics\\nfiles: one for chr1,2,3; one for\\nchrLambda; one for the rest of chromosomes\\nif existing."
    keep_temp: "(=0)                Specify whether to keep temp files;"
    arg_number_threads: "[ --threads ] arg (=1)          Number of threads on all mapped file.\\nSuggest 1~8 on EACH input file depending\\nRAM size and disk speed.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    Directory out_web_output_dir = "${in_web_output_dir}"
  }
}