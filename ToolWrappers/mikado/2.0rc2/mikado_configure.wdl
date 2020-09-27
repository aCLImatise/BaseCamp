version 1.0

task MikadoConfigure {
  input {
    Int? minimum_cdna_length
    Int? max_intron_length
    File? scoring
    File? copy_scoring
    Int? intronrange__intronrange
    String? subloc_i_out
    String? mono_loci_out
    Boolean? no_pad
    Boolean? only_reference_update
    Boolean? exclude_retained_introns
    Boolean? keep_disrupted_cds
    Boolean? check_references
    Boolean? dai_jin
    Int? blast_chunks
    Boolean? use_blast
    Boolean? use_trans_decoder
    String? mode
    String? scheduler
    File? exe
    File? cluster_config
    String? seed
    Boolean? full
  }
  command <<<
    mikado configure \
      ~{if defined(minimum_cdna_length) then ("--minimum-cdna-length " +  '"' + minimum_cdna_length + '"') else ""} \
      ~{if defined(max_intron_length) then ("--max-intron-length " +  '"' + max_intron_length + '"') else ""} \
      ~{if defined(scoring) then ("--scoring " +  '"' + scoring + '"') else ""} \
      ~{if defined(copy_scoring) then ("--copy-scoring " +  '"' + copy_scoring + '"') else ""} \
      ~{if defined(intronrange__intronrange) then ("-i " +  '"' + intronrange__intronrange + '"') else ""} \
      ~{if defined(subloc_i_out) then ("--subloci-out " +  '"' + subloc_i_out + '"') else ""} \
      ~{if defined(mono_loci_out) then ("--monoloci-out " +  '"' + mono_loci_out + '"') else ""} \
      ~{if (no_pad) then "--no-pad" else ""} \
      ~{if (only_reference_update) then "--only-reference-update" else ""} \
      ~{if (exclude_retained_introns) then "--exclude-retained-introns" else ""} \
      ~{if (keep_disrupted_cds) then "--keep-disrupted-cds" else ""} \
      ~{if (check_references) then "--check-references" else ""} \
      ~{if (dai_jin) then "--daijin" else ""} \
      ~{if defined(blast_chunks) then ("--blast-chunks " +  '"' + blast_chunks + '"') else ""} \
      ~{if (use_blast) then "--use-blast" else ""} \
      ~{if (use_trans_decoder) then "--use-transdecoder" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(scheduler) then ("--scheduler " +  '"' + scheduler + '"') else ""} \
      ~{if defined(exe) then ("--exe " +  '"' + exe + '"') else ""} \
      ~{if defined(cluster_config) then ("--cluster_config " +  '"' + cluster_config + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (full) then "--full" else ""}
  >>>
  parameter_meta {
    minimum_cdna_length: "Minimum cDNA length for transcripts."
    max_intron_length: "Maximum intron length for transcripts."
    scoring: "Scoring file to use. Mikado provides the following:\\nmammalian.yaml,\\nplant.yaml,\\nHISTORIC/worm.yaml,\\nHISTORIC/athaliana_scoring.yaml,\\nHISTORIC/scerevisiae.yaml,\\nHISTORIC/celegans_scoring.yaml,\\nHISTORIC/insects.yaml,\\nHISTORIC/human.yaml,\\nHISTORIC/hsapiens_scoring.yaml,\\nHISTORIC/dmelanogaster_scoring.yaml,\\nHISTORIC/plants.yaml"
    copy_scoring: "File into which to copy the selected scoring file, for modification."
    intronrange__intronrange: "INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE\\nRange into which intron lengths should fall, as a couple of integers.\\nTranscripts with intron lengths outside of this range will be penalised.\\nDefault: (60, 900)"
    subloc_i_out: "Name of the optional subloci output. By default, this will not be produced."
    mono_loci_out: "Name of the optional monoloci output. By default, this will not be produced."
    no_pad: "Disable transcript padding. On by default."
    only_reference_update: "Flag. If switched on, Mikado will only keep loci where at least one of the transcripts     is marked as \\\"reference\\\". CAUTION: new and experimental. If no transcript has been marked as reference,     the output will be completely empty!"
    exclude_retained_introns: "Exclude all retained intron alternative splicing events from the final output. Default: False. Retained intron events that do not dirsupt the CDS are kept by Mikado in the final output."
    keep_disrupted_cds: "Keep in the final output transcripts whose CDS is most probably disrupted by a retained intron event. Default: False. Mikado will try to detect these instances and exclude them from the final output."
    check_references: "Flag. If switched on, Mikado will also check reference models against the general\\ntranscript requirements, and will also consider them as potential fragments. This is useful in the context of e.g.\\nupdating an *ab-initio* results with data from RNASeq, protein alignments, etc."
    dai_jin: "Flag. If set, the configuration file will be also valid for Daijin."
    blast_chunks: "Number of parallel DIAMOND/BLAST jobs to run. Default: 10."
    use_blast: "Flag. If switched on, Mikado will use BLAST instead of DIAMOND."
    use_trans_decoder: "Flag. If switched on, Mikado will use TransDecoder instead of Prodigal."
    mode: "[{nosplit,stringent,lenient,permissive,split} ...]\\nMode(s) in which Mikado will treat transcripts with multiple ORFs.\\n- nosplit: keep the transcripts whole.\\n- stringent: split multi-orf transcripts if two consecutive ORFs have both BLAST hits\\nand none of those hits is against the same target.\\n- lenient: split multi-orf transcripts as in stringent, and additionally, also when\\neither of the ORFs lacks a BLAST hit (but not both).\\n- permissive: like lenient, but also split when both ORFs lack BLAST hits\\n- split: split multi-orf transcripts regardless of what BLAST data is available.\\nIf multiple modes are specified, Mikado will create a Daijin-compatible configuration file."
    scheduler: "Scheduler to use. Default: None - ie, either execute everything on the local machine or use DRMAA to submit and control jobs (recommended)."
    exe: "Configuration file for the executables."
    cluster_config: "Cluster configuration file to write to.\\n"
    seed: ""
    full: ""
  }
  output {
    File out_stdout = stdout()
  }
}