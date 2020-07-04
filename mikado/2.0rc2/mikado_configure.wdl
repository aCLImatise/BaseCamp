version 1.0

task MikadoConfigure {
  input {
    Array[String] skip_split
    Boolean? json
    Boolean? yaml
    Boolean? to_ml
    String? out_dir
    Int? minimum_cdna_length
    Int? max_intron_length
    String? scoring
    String? copy_scoring
    Int? intronrange__intronrange
    String? subloc_i_out
    String? mono_loci_out
    Boolean? no_pad
    Boolean? only_reference_update
    Boolean? exclude_retained_introns
    Boolean? keep_disrupted_cds
    Boolean? check_references
    String? scheduler
    String? exe
    String? cluster_config
    Boolean? full
    String? seed
  }
  command <<<
    mikado configure \
      ~{if defined(skip_split) then ("--skip-split " +  '"' + skip_split + '"') else ""} \
      ~{true="--json" false="" json} \
      ~{true="--yaml" false="" yaml} \
      ~{true="--toml" false="" to_ml} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(minimum_cdna_length) then ("--minimum-cdna-length " +  '"' + minimum_cdna_length + '"') else ""} \
      ~{if defined(max_intron_length) then ("--max-intron-length " +  '"' + max_intron_length + '"') else ""} \
      ~{if defined(scoring) then ("--scoring " +  '"' + scoring + '"') else ""} \
      ~{if defined(copy_scoring) then ("--copy-scoring " +  '"' + copy_scoring + '"') else ""} \
      ~{if defined(intronrange__intronrange) then ("-i " +  '"' + intronrange__intronrange + '"') else ""} \
      ~{if defined(subloc_i_out) then ("--subloci-out " +  '"' + subloc_i_out + '"') else ""} \
      ~{if defined(mono_loci_out) then ("--monoloci-out " +  '"' + mono_loci_out + '"') else ""} \
      ~{true="--no-pad" false="" no_pad} \
      ~{true="--only-reference-update" false="" only_reference_update} \
      ~{true="--exclude-retained-introns" false="" exclude_retained_introns} \
      ~{true="--keep-disrupted-cds" false="" keep_disrupted_cds} \
      ~{true="--check-references" false="" check_references} \
      ~{if defined(scheduler) then ("--scheduler " +  '"' + scheduler + '"') else ""} \
      ~{if defined(exe) then ("--exe " +  '"' + exe + '"') else ""} \
      ~{if defined(cluster_config) then ("--cluster_config " +  '"' + cluster_config + '"') else ""} \
      ~{true="--full" false="" full} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    skip_split: "List of labels for which splitting will be disabled (eg long reads such as PacBio)"
    json: "Output will be in JSON (default: inferred by filename, with TOML as fallback)."
    yaml: "Output will be in YAML (default: inferred by filename, with TOML as fallback)."
    to_ml: "Output will be in TOML (default: inferred by filename, with TOML as fallback)."
    out_dir: "Destination directory for the output."
    minimum_cdna_length: "Minimum cDNA length for transcripts."
    max_intron_length: "Maximum intron length for transcripts."
    scoring: "Scoring file to use. Mikado provides the following: mammalian.yaml, plant.yaml, HISTORIC/worm.yaml, HISTORIC/athaliana_scoring.yaml, HISTORIC/celegans_scoring.yaml, HISTORIC/scerevisiae.yaml, HISTORIC/insects.yaml, HISTORIC/dmelanogaster_scoring.yaml, HISTORIC/human.yaml, HISTORIC/plants.yaml, HISTORIC/hsapiens_scoring.yaml"
    copy_scoring: "File into which to copy the selected scoring file, for modification."
    intronrange__intronrange: "INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE Range into which intron lengths should fall, as a couple of integers. Transcripts with intron lengths outside of this range will be penalised. Default: (60, 900)"
    subloc_i_out: "Name of the optional subloci output. By default, this will not be produced."
    mono_loci_out: "Name of the optional monoloci output. By default, this will not be produced."
    no_pad: "Disable transcript padding. On by default."
    only_reference_update: "Flag. If switched on, Mikado will only keep loci where at least one of the transcripts     is marked as \"reference\". CAUTION: new and experimental. If no transcript has been marked as reference,     the output will be completely empty!"
    exclude_retained_introns: "Exclude all retained intron alternative splicing events from the final output. Default: False. Retained intron events that do not dirsupt the CDS are kept by Mikado in the final output."
    keep_disrupted_cds: "Keep in the final output transcripts whose CDS is most probably disrupted by a retained intron event. Default: False. Mikado will try to detect these instances and exclude them from the final output."
    check_references: "Flag. If switched on, Mikado will also check reference models against the general transcript requirements, and will also consider them as potential fragments. This is useful in the context of e.g. updating an *ab-initio* results with data from RNASeq, protein alignments, etc. "
    scheduler: "Scheduler to use. Default: None - ie, either execute everything on the local machine or use DRMAA to submit and control jobs (recommended)."
    exe: "Configuration file for the executables."
    cluster_config: "Cluster configuration file to write to."
    full: ""
    seed: ""
  }
}