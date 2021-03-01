version 1.0

task MikadoConfigure {
  input {
    Int? full
    Boolean? strand_specific
    Boolean? no_files
    File? gff
    Boolean? list
    String? reference
    String? strand_specific_assemblies
    String? labels
    File? external
    String? skip_split
    File? json
    File? yaml
    File? to_ml
    Directory? out_dir
    Int? minimum_cdna_length
    Int? max_intron_length
    File? scoring
    File? copy_scoring
    Int? _intronrange_intronrange
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
    String out
  }
  command <<<
    mikado configure \
      ~{out} \
      ~{if defined(full) then ("--full " +  '"' + full + '"') else ""} \
      ~{if (strand_specific) then "--strand-specific" else ""} \
      ~{if (no_files) then "--no-files" else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(strand_specific_assemblies) then ("--strand-specific-assemblies " +  '"' + strand_specific_assemblies + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(external) then ("--external " +  '"' + external + '"') else ""} \
      ~{if defined(skip_split) then ("--skip-split " +  '"' + skip_split + '"') else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (yaml) then "--yaml" else ""} \
      ~{if (to_ml) then "--toml" else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(minimum_cdna_length) then ("--minimum-cdna-length " +  '"' + minimum_cdna_length + '"') else ""} \
      ~{if defined(max_intron_length) then ("--max-intron-length " +  '"' + max_intron_length + '"') else ""} \
      ~{if defined(scoring) then ("--scoring " +  '"' + scoring + '"') else ""} \
      ~{if defined(copy_scoring) then ("--copy-scoring " +  '"' + copy_scoring + '"') else ""} \
      ~{if defined(_intronrange_intronrange) then ("-i " +  '"' + _intronrange_intronrange + '"') else ""} \
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
      ~{if defined(cluster_config) then ("--cluster_config " +  '"' + cluster_config + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    full: "Random seed number."
    strand_specific: "Boolean flag indicating whether all the assemblies are strand-specific."
    no_files: "Remove all files-specific options from the printed configuration file.\\nInvoking the \\\"--gff\\\" option will disable this flag."
    gff: "Input GFF/GTF file(s), separated by comma"
    list: "Tab-delimited file containing rows with the following format:\\n<file>  <label> <strandedness> <score(optional)> <is_reference(optional)> <always_keep(optional)\\nstrandedness, is_reference and always_keep must be boolean values (True, False)\\nscore must be a valid floating number."
    reference: "Fasta genomic reference."
    strand_specific_assemblies: "List of strand-specific assemblies among the inputs."
    labels: "Labels to attach to the IDs of the transcripts of the input files,\\nseparated by comma."
    external: "External configuration file to overwrite/add values from.\\nParameters specified on the command line will take precedence over those present in the configuration file."
    skip_split: "List of labels for which splitting will be disabled (eg long reads such as PacBio)"
    json: "Output will be in JSON (default: inferred by filename, with TOML as fallback)."
    yaml: "Output will be in YAML (default: inferred by filename, with TOML as fallback)."
    to_ml: "Output will be in TOML (default: inferred by filename, with TOML as fallback)."
    out_dir: "Destination directory for the output."
    minimum_cdna_length: "Minimum cDNA length for transcripts."
    max_intron_length: "Maximum intron length for transcripts."
    scoring: "Scoring file to use. Mikado provides the following:\\nmammalian.yaml,\\nplant.yaml,\\nHISTORIC/worm.yaml,\\nHISTORIC/athaliana_scoring.yaml,\\nHISTORIC/scerevisiae.yaml,\\nHISTORIC/celegans_scoring.yaml,\\nHISTORIC/insects.yaml,\\nHISTORIC/human.yaml,\\nHISTORIC/hsapiens_scoring.yaml,\\nHISTORIC/dmelanogaster_scoring.yaml,\\nHISTORIC/plants.yaml"
    copy_scoring: "File into which to copy the selected scoring file, for modification."
    _intronrange_intronrange: "INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE\\nRange into which intron lengths should fall, as a couple of integers.\\nTranscripts with intron lengths outside of this range will be penalised.\\nDefault: (60, 900)"
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
    out: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_json = "${in_json}"
    File out_yaml = "${in_yaml}"
    File out_to_ml = "${in_to_ml}"
    Directory out_out_dir = "${in_out_dir}"
  }
}