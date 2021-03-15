version 1.0

task LeeHom {
  input {
    Boolean? fq_one
    Boolean? fq_two
    Boolean? fq_o
    Boolean? outfile
    Boolean? produce_uncompressed_bam
    Boolean? aligned
    Boolean? verbose
    Boolean? log
    Boolean? phred_six_four
    Boolean? use_multiple_cores
    Boolean? ancient_dna
    Boolean? loc
    Boolean? scale
    Boolean? keep_orig
    Boolean? adapter_first_read
    Boolean? adapter_second_read
    Boolean? auto
    Boolean? first_read_chimera_filter
    Boolean? key
    Boolean? trim_key
    Boolean? allow_missing
    Boolean? um_if
    Boolean? u_mir
    Boolean? u_mtf
    Boolean? um_tr
    Boolean? trim_cut_off
    String bam_file
  }
  command <<<
    leeHom \
      ~{bam_file} \
      ~{if (fq_one) then "-fq1" else ""} \
      ~{if (fq_two) then "-fq2" else ""} \
      ~{if (fq_o) then "-fqo" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (produce_uncompressed_bam) then "-u" else ""} \
      ~{if (aligned) then "--aligned" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (phred_six_four) then "--phred64" else ""} \
      ~{if (use_multiple_cores) then "-t" else ""} \
      ~{if (ancient_dna) then "--ancientdna" else ""} \
      ~{if (loc) then "--loc" else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (keep_orig) then "--keepOrig" else ""} \
      ~{if (adapter_first_read) then "--adapterFirstRead" else ""} \
      ~{if (adapter_second_read) then "--adapterSecondRead" else ""} \
      ~{if (auto) then "--auto" else ""} \
      ~{if (first_read_chimera_filter) then "--FirstReadChimeraFilter" else ""} \
      ~{if (key) then "--key" else ""} \
      ~{if (trim_key) then "--trimkey" else ""} \
      ~{if (allow_missing) then "--allowMissing" else ""} \
      ~{if (um_if) then "--umif" else ""} \
      ~{if (u_mir) then "--umir" else ""} \
      ~{if (u_mtf) then "--umtf" else ""} \
      ~{if (um_tr) then "--umtr" else ""} \
      ~{if (trim_cut_off) then "--trimCutoff" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/leehom:1.2.15--hda3bf64_0"
  }
  parameter_meta {
    fq_one: "First fastq"
    fq_two: "Second  fastq file (for paired-end)"
    fq_o: "Output fastq prefix"
    outfile: "Output (BAM format)."
    produce_uncompressed_bam: "Produce uncompressed bam (good for pipe)"
    aligned: "Allow reads to be aligned (default false)"
    verbose: "Turn all messages on (default false)"
    log: "[log file]        Print a tally of merged reads to this log file (default only to stderr)"
    phred_six_four: "Use PHRED 64 as the offset for QC scores (default : PHRED33)"
    use_multiple_cores: "[threads]            Use multiple cores (default : 1)"
    ancient_dna: "ancient DNA (default false)\\nthis allows for partial overlap"
    loc: "Location for lognormal dist. (default none)"
    scale: "Scale for lognormal dist. (default none)"
    keep_orig: "Write original reads if they are trimmed or merged  (default false)\\nSuch reads will be marked as PCR duplicates"
    adapter_first_read: "Adapter that is observed after the forward read (def. Multiplex: AGATCGGAAGAGCACACGTCTGAACTCCAG)"
    adapter_second_read: "Adapter that is observed after the reverse read (def. Multiplex: AGATCGGAAGAGCGTCGTGTAGGGAAAGAG)"
    auto: "Auto detect adapters, requires at least 1M reads, does NOT currently support UMIs (def. : false)"
    first_read_chimera_filter: "If the forward read looks like this sequence, the cluster is filtered out.\\nProvide several sequences separated by comma (def. Multiplex: ACACTCTTTCCCTACACGTCTGAACTCCAG)"
    key: "Key sequence with which each sequence starts. Comma separate for forward and reverse reads. (default '')"
    trim_key: "Trim the key sequence even for untrimmed. (default 'false')"
    allow_missing: "Allow one base in one key to be missing or wrong. (default false)"
    um_if: "[bp]                             Extract bp for the UMI for the forward read. (default 0)"
    u_mir: "[bp]                             Extract bp for the UMI for the reverse read. (default 0)"
    u_mtf: "[bp]                             Remove overhangs of bp after the UMI for the forward read. (default 0)"
    um_tr: "[bp]                             Remove overhangs of bp after the UMI for the reverse read. (default 0)"
    trim_cut_off: "Lowest number of adapter bases to be observed for single Read trimming (default 1)"
    bam_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}