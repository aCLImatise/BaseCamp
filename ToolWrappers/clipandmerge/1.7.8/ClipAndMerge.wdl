version 1.0

task ClipAndMerge {
  input {
    Boolean? discard_bad_reads
    Float? error_rate_merging
    String? forward_reads_agatcggaagagcacacgtctgaactccagtcac
    Int? in_one
    Int? in_two
    Int? discard_sequences_shorter
    Int? last_base
    File? log
    Int? require_alignment_length
    Int? max_parallel_reads
    Int? min_qual_bad_reads
    Boolean? discard_sequences_is
    Boolean? no_clip_stats
    Boolean? no_clipping
    Boolean? no_merging
    Boolean? no_qb_mm
    File? output_file_file
    Int? minimal_number_nucleotides
    Int? minimum_base_quality
    Int? qo
    Boolean? qt
    Float? qual_freq_bad_reads
    String? reverse_reads_default
    Boolean? rm_no_partner
    Boolean? time_estimation
    Int? trim_three_p
    Int? trim_five_p
    File? reversefile_write_unmerged
    Boolean? verbose
  }
  command <<<
    ClipAndMerge \
      ~{if (discard_bad_reads) then "-discardBadReads" else ""} \
      ~{if defined(error_rate_merging) then ("-e " +  '"' + error_rate_merging + '"') else ""} \
      ~{if defined(forward_reads_agatcggaagagcacacgtctgaactccagtcac) then ("-f " +  '"' + forward_reads_agatcggaagagcacacgtctgaactccagtcac + '"') else ""} \
      ~{if defined(in_one) then ("-in1 " +  '"' + in_one + '"') else ""} \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(discard_sequences_shorter) then ("-l " +  '"' + discard_sequences_shorter + '"') else ""} \
      ~{if defined(last_base) then ("-lastBase " +  '"' + last_base + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(require_alignment_length) then ("-m " +  '"' + require_alignment_length + '"') else ""} \
      ~{if defined(max_parallel_reads) then ("-maxParallelReads " +  '"' + max_parallel_reads + '"') else ""} \
      ~{if defined(min_qual_bad_reads) then ("-minQualBadReads " +  '"' + min_qual_bad_reads + '"') else ""} \
      ~{if (discard_sequences_is) then "-n" else ""} \
      ~{if (no_clip_stats) then "-no_clip_stats" else ""} \
      ~{if (no_clipping) then "-no_clipping" else ""} \
      ~{if (no_merging) then "-no_merging" else ""} \
      ~{if (no_qb_mm) then "-no_qbMM" else ""} \
      ~{if defined(output_file_file) then ("-o " +  '"' + output_file_file + '"') else ""} \
      ~{if defined(minimal_number_nucleotides) then ("-p " +  '"' + minimal_number_nucleotides + '"') else ""} \
      ~{if defined(minimum_base_quality) then ("-q " +  '"' + minimum_base_quality + '"') else ""} \
      ~{if defined(qo) then ("-qo " +  '"' + qo + '"') else ""} \
      ~{if (qt) then "-qt" else ""} \
      ~{if defined(qual_freq_bad_reads) then ("-qualFreqBadReads " +  '"' + qual_freq_bad_reads + '"') else ""} \
      ~{if defined(reverse_reads_default) then ("-r " +  '"' + reverse_reads_default + '"') else ""} \
      ~{if (rm_no_partner) then "-rm_no_partner" else ""} \
      ~{if (time_estimation) then "-timeEstimation" else ""} \
      ~{if defined(trim_three_p) then ("-trim3p " +  '"' + trim_three_p + '"') else ""} \
      ~{if defined(trim_five_p) then ("-trim5p " +  '"' + trim_five_p + '"') else ""} \
      ~{if defined(reversefile_write_unmerged) then ("-u " +  '"' + reversefile_write_unmerged + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    discard_bad_reads: ": Discard reads after merging that do not fulfill the quality criteria. (default:\\nfalse)"
    error_rate_merging: ": Error rate for merging forward and reverse reads. A value of 0.05 means that 5%\\nmismatches are allowed in the overlap region. (default: 0.05)"
    forward_reads_agatcggaagagcacacgtctgaactccagtcac: ": Forward reads adapter sequence. (default: AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC)"
    in_one: "[]                       : Forward reads input file(s) in fastq(.gz) file format."
    in_two: "[]                       : Reverse reads input file(s) in fastq(.gz) file format."
    discard_sequences_shorter: ": Discard sequences shorter than this number of nucleotides after adapter\\nclipping. (default: 25)"
    last_base: ": Reads are trimmed from the 3' end until given value is reached. Trimming is not\\nperformed if read is already <= given value. If this option is given the\\n'-trim3p' option is disregarded! Given value sould be 1-based! (default:\\n2147483647)"
    log: ": Write log messages to a file instead of the standard error stream."
    require_alignment_length: ": Require a minimum adapter alignment length. If less nucleotides align with the\\nadapter, the sequences are not clipped. (default: 8)"
    max_parallel_reads: ": Maximal number of reads, that can be processed in parallel. This number largely\\ndepends on the processing system settings! Only change it if you know what you\\nare doing! (default: 1000)"
    min_qual_bad_reads: ": Minimal base quality for keeping bad reads. If 0 is specified, then all reads\\nare kept. (default: 0)"
    discard_sequences_is: ": Discard sequences with unknown (N) nucleotides. Default is to keep such\\nsequences. (default: false)"
    no_clip_stats: ": Disable the display of clipping statistics. (default: false)"
    no_clipping: ": Skip adapter clipping. Only read merging is performed! (This is only recommended\\nif every forward and reverse read has a corresponding partner in the other\\nrespective fastq-file! Otherwise merging can not be performed correctly.\\n(default: false)"
    no_merging: ": Skip read merging for paired-end sequencing data! Only adapter clipping is\\nperformed. This parameter is not needed for single-end data. (default: false)"
    no_qb_mm: ": Do not perform quality based mismatch calculation for merging. Default is to\\ntake quality scores into account. (default: false)"
    output_file_file: ": Output file. If no file is provided, output will be written to System.out. If\\nfile ends with '.gz', output will be gzipped."
    minimal_number_nucleotides: ": Minimal number of nucleotides that have to overlap in order to merge the forward\\nand reverse read. (default: 10)"
    minimum_base_quality: ": Minimum base quality for quality trimming. (default: 20)"
    qo: ": Phred Score offset. (default: 33)"
    qt: ": Enable quality trimming for non-merged reads. (default: true)"
    qual_freq_bad_reads: ": Percentage of reads that have to fulfill minimal base quality criterion.\\n(default: 0.9)"
    reverse_reads_default: ": Reverse reads adapter sequence. (default: AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTA)"
    rm_no_partner: ": Remove reads with no pairing partner after adapter clipping. (default: false)"
    time_estimation: ": Perform remaining time estimation. Note: this can take long for large gzipped\\ninput files. (default: false)"
    trim_three_p: ": Trim N nucleotides from the 3' end of each read. This step is performed after\\nadapter clipping. Reverse reads are not reverse trancriped before trimming.\\n(default: 0)"
    trim_five_p: ": Trim N nucleotides from the 5' end of each read. This step is performed after\\nadapter clipping. Reverse reads are not reverse transcriped before trimming.\\n(default: 0)"
    reversefile_write_unmerged: "REVERSE_FILE        : Write unmerged forward and reverse reads to extra files. Unmerged forward reads\\nare written to the file 'FORWARD_FILE'. Unmerged reverse reads are written to\\nthe file 'REVERSE_FILE', i.e. the regular output file then only contains merged\\nreads!\\nAttention: If the option '-rm_no_partner' is not selected the two given output\\nfiles also contain forward/reverse reads with no pairing partner!\\nIf filenames end with '.gz' gzipped output is produced!"
    verbose: ": Print additional processing information (default: false)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_file = "${in_output_file_file}"
    File out_reversefile_write_unmerged = "${in_reversefile_write_unmerged}"
  }
}