version 1.0

task NGseqBasic {
  input {
    File? outfile
    File? errfile
    Boolean? orange_blue
    Boolean? gz
    Int? lanes
    Boolean? single_end
    Int? how_many_processors
    Boolean? bowtie_one
    Int? chunk_mb
    Int? run_maps_more
    Int? max_ins
    String? no_bowtie
    Boolean? flash
    File? blacklist_filter
    Boolean? footprint
    Boolean? peak_call
    Boolean? next_era
    Boolean? trim
    Boolean? trim_five
    Int? ada_three_read_one
    Int? ada_five_read_one
    Boolean? no_window
    Int? window_size
    Int? window_incr
    Boolean? save_unmapped
    Boolean? save_unpaired
    Boolean? save_unpaired_filtered
    File? save_unfiltered
    File? save_unfiltered_mapped
    File? save_untrimmed
    File? save_untrimmed_mapped
    Boolean? save_bdg
    Boolean? pyramid_rerun
    Boolean? only_peak_call
    Boolean? only_fp_and_pc
    Boolean? only_hub
    Int? window_fp
    Int? depth_p
    Int? merge_p
    Int? contig_p
  }
  command <<<
    NGseqBasic \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(errfile) then ("--errfile " +  '"' + errfile + '"') else ""} \
      ~{if (orange_blue) then "--orangeBlue" else ""} \
      ~{if (gz) then "--gz" else ""} \
      ~{if defined(lanes) then ("--lanes " +  '"' + lanes + '"') else ""} \
      ~{if (single_end) then "--singleEnd" else ""} \
      ~{if defined(how_many_processors) then ("-p " +  '"' + how_many_processors + '"') else ""} \
      ~{if (bowtie_one) then "--bowtie1" else ""} \
      ~{if defined(chunk_mb) then ("--chunkmb " +  '"' + chunk_mb + '"') else ""} \
      ~{if defined(run_maps_more) then ("-M " +  '"' + run_maps_more + '"') else ""} \
      ~{if defined(max_ins) then ("--maxins " +  '"' + max_ins + '"') else ""} \
      ~{if defined(no_bowtie) then ("--noBowtie " +  '"' + no_bowtie + '"') else ""} \
      ~{if (flash) then "--flash" else ""} \
      ~{if (blacklist_filter) then "--blacklistFilter" else ""} \
      ~{if (footprint) then "--footPrint" else ""} \
      ~{if (peak_call) then "--peakCall" else ""} \
      ~{if (next_era) then "--nextera" else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (trim_five) then "--trim5" else ""} \
      ~{if defined(ada_three_read_one) then ("--ada3read1 " +  '"' + ada_three_read_one + '"') else ""} \
      ~{if defined(ada_five_read_one) then ("--ada5read1 " +  '"' + ada_five_read_one + '"') else ""} \
      ~{if (no_window) then "--noWindow" else ""} \
      ~{if defined(window_size) then ("--windowSize " +  '"' + window_size + '"') else ""} \
      ~{if defined(window_incr) then ("--windowIncr " +  '"' + window_incr + '"') else ""} \
      ~{if (save_unmapped) then "--saveUnmapped" else ""} \
      ~{if (save_unpaired) then "--saveUnpaired" else ""} \
      ~{if (save_unpaired_filtered) then "--saveUnpairedFiltered" else ""} \
      ~{if (save_unfiltered) then "--saveUnfiltered" else ""} \
      ~{if (save_unfiltered_mapped) then "--saveUnfilteredMapped" else ""} \
      ~{if (save_untrimmed) then "--saveUntrimmed" else ""} \
      ~{if (save_untrimmed_mapped) then "--saveUntrimmedMapped" else ""} \
      ~{if (save_bdg) then "--saveBDG" else ""} \
      ~{if (pyramid_rerun) then "--pyramidRerun" else ""} \
      ~{if (only_peak_call) then "--onlyPeakCall" else ""} \
      ~{if (only_fp_and_pc) then "--onlyFPandPC" else ""} \
      ~{if (only_hub) then "--onlyHub" else ""} \
      ~{if defined(window_fp) then ("--windowFP " +  '"' + window_fp + '"') else ""} \
      ~{if defined(depth_p) then ("--depthP " +  '"' + depth_p + '"') else ""} \
      ~{if defined(merge_p) then ("--mergeP " +  '"' + merge_p + '"') else ""} \
      ~{if defined(contig_p) then ("--contigP " +  '"' + contig_p + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "(the STDOUT log file name in your RUN COMMAND - see above )"
    errfile: "(the STDERR log file name in your RUN COMMAND - see above )"
    orange_blue: "(use orange-blue color scheme instead of red-green)"
    gz: "(input files are provided in file.fastq.gz compressed format )"
    lanes: "(set this to be the number of lanes, if there are more than 1 lanes in your fastq files)"
    single_end: "- to run single end sequencing files (default behavior is paired end files)"
    how_many_processors: ": to how many processors we will parallelise the bowtie part of the run"
    bowtie_one: "(default is bowtie1 - decide if bowtie1 or bowtie2 is to be used. bowtie2 is better to long reads - read lenght more than 70b, fragment lenght more than 350b)"
    chunk_mb: "- memory allocated to Bowtie, defaults to 256mb - only affects bowtie1 run"
    run_maps_more: "run with bowtie parameter M=2 (if maps more than M times, report one alignment in random) - only affects bowtie1 run"
    max_ins: ": sets the TRUE fragment (max) lenght to 350bp. Bowtie1 default 250, bowtie2 default 500, this script default 350. (Bowtie mappings resulting in fragments longer than --maxins are not reported)"
    no_bowtie: "only pipe AFTER bowtie (assumes PIPE_mappedBamPaths.txt, see above)"
    flash: "**/noFlash (run/do-not-run Flash - for unmapped reads 'try to merge overlapping short reads to longer single end read' to enhance mapping)"
    blacklist_filter: "/noBlacklistFilter - supported genomes mm9 mm10 hg18 hg19 (filter/do-not-filter blacklisted regions out from the final bam file)"
    footprint: ": generate also footprint tracks (see footprint(FP) parameters below)"
    peak_call: ": generate also peak call (see peak call(P) parameters below)"
    next_era: ": use Nextera adaptors in trimming, instead of standard illumina PE adapters"
    trim: "/noTrim** (run/do-not-run TrimGalore for the data - Illumina PE standard adapter filter, trims on 3' end)"
    trim_five: "(run trimming also for 5' end of the data - Illumina PE standard adapter filter, combination of TrimGalore and cutadapt)"
    ada_three_read_one: ": custom adapters 3' trimming, R1 and R2 (give both if PE custom trimming is needed, SE trimming needs only R1) - these adapters will be used instead of Illumina default / atac adapters. SEQUENCE has to be in CAPITAL letters ATCG"
    ada_five_read_one: ": custom adapters 5' trimming, R1 and R2 (give both if PE custom trimming is needed, SE trimming needs only R1) - these adapters will be used instead of Illumina default / atac adapters. SEQUENCE has to be in CAPITAL letters ATCG"
    no_window: ": no windowing - instead plot 1b resolution raw read depths"
    window_size: ": custom window size (instead of default 300b) - this value has to be even number (or is rounded into one).\\nIf no custom INCREMENT is given, increment is set to 10% of windowSize , i.e. the windowSize value has to be divisible by 10 (or will be rounded to behave as such)."
    window_incr: ": custom window increment (instead of default 10%). The value of windowIncr should be even number, given in BASES (10 bases : windowIncr=10), not percentages.\\nIf no custom windowSize is given, the windowSize will be set to 300bases, and increment rounded so that 300bases is divisible by the given increment (allows only values 10 and 30)."
    save_unmapped: "(save fastq files UNMAPPED_1.fastq UNMAPPED_2.fastq for not-paired-mapped reads : only for PE data)"
    save_unpaired: "(save bam files singleEnd_bowtie_READ1.bam singleEnd_bowtie_READ2.bam for unpaired mapped reads - not blacklisted/duplicate-filtered)"
    save_unpaired_filtered: "(save bam files singleEnd_bowtie_filtered_READ1.bam singleEnd_bowtie_filtered_READ1.bam for unpaired mapped reads - blacklisted/duplicate-filtered)"
    save_unfiltered: "(save original bam file bowtie_out.bam - straight from bowtie output)"
    save_unfiltered_mapped: "(save original bam file mapped.bam - straight from bowtie output. Do not print out unmapped reads (single end) / non-proper pairs (paired end).)"
    save_untrimmed: "(run EXTRA bowtie-run before trimming, save the bam file UNTRIMMED_bowtie_out.bam - straight from before-trimming bowtie output - includes all reads)"
    save_untrimmed_mapped: "(run EXTRA bowtie-run before trimming, save the bam file UNTRIMMED_onlyMapped_bowtie_out.bam - straight from before-trimming bowtie output. Do not print out unmapped reads (single end) / non-proper pairs (paired end).)"
    save_bdg: "(save unpacked BDG files - default : save only BIGWIG packed versions of these files"
    pyramid_rerun: ": if you are running peak calls / footprints via PYRAMID pipeline, set this on."
    only_peak_call: ": only run Peak Call (to finetune peak call part) - expects PIPE_previousRunPaths.txt (see above)"
    only_fp_and_pc: ": only run Peak Call and FootPrinting (to finetune FootPrint windowing and peak call parameters) - expects PIPE_previousRunPaths.txt (see above)"
    only_hub: ": only generates data hub - NOTE !! this DOES NOT include data from any 'footprint / peak call rerun' folders - it hubs only the ORIGINAL data set - (expects PIPE_previousRunPaths.txt, see above)"
    window_fp: ": (windowing the signal for visualisation) - sliding window, where overlap 2*WINDOW, and window size 4*WINDOW, resulting in 2*WINDOW size increments in graph. Value 0 means NO WINDOWING (only raw 1b resolution track is given)"
    depth_p: ": (first filter)  RANGE of depthP - Each region should have at least 40 reads to be included to the peak call."
    merge_p: ": (second filter) Merges regions separated by 0bp or less."
    contig_p: ": (third filter)  Regions (merged, depth-filtered) should be at least 20bp wide to be considered."
  }
  output {
    File out_stdout = stdout()
    File out_blacklist_filter = "${in_blacklist_filter}"
    File out_save_unfiltered = "${in_save_unfiltered}"
    File out_save_unfiltered_mapped = "${in_save_unfiltered_mapped}"
    File out_save_untrimmed = "${in_save_untrimmed}"
    File out_save_untrimmed_mapped = "${in_save_untrimmed_mapped}"
  }
}