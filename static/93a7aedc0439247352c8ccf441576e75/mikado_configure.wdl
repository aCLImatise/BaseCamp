version 1.0

task MikadoConfigure {
  input {
    Int? full
    Boolean? random_seed
    Boolean? strand_specific
    File? gff
    Boolean? list
    String? reference
    String? strand_specific_assemblies
    String? labels
    Int? codon_table
    File? external
    String? skip_split
    File? json
    File? yaml
    File? to_ml
    Directory? out_dir
    Int? minimum_cdna_length
    Int? max_intron_length
    Boolean? strip_faulty_cds
    File? scoring
    File? copy_scoring
    Int? _intronrange_intronrange
    String? subloc_i_out
    String? mono_loci_out
    Boolean? no_pad
    Boolean? reference_update
    Boolean? only_reference_update
    Boolean? exclude_retained_introns
    Boolean? keep_disrupted_cds
    Boolean? check_references
    Int? min_clustering_cdna_overlap
    Int? min_clustering_cds_overlap
    Boolean? report_all_orfs
    Boolean? report_all_external_metrics
    Boolean? cds_only
    Boolean? as_cds_only
    Boolean? dai_jin
    Int? blast_chunks
    Boolean? use_blast
    String? mode
    String? scheduler
    File? exe
    File? cluster_config
    String out
    String strand_specific_dot
    String diamond_dot
  }
  command <<<
    mikado configure \
      ~{out} \
      ~{strand_specific_dot} \
      ~{diamond_dot} \
      ~{if defined(full) then ("--full " +  '"' + full + '"') else ""} \
      ~{if (random_seed) then "--random-seed" else ""} \
      ~{if (strand_specific) then "--strand-specific" else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(strand_specific_assemblies) then ("--strand-specific-assemblies " +  '"' + strand_specific_assemblies + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(codon_table) then ("--codon-table " +  '"' + codon_table + '"') else ""} \
      ~{if defined(external) then ("--external " +  '"' + external + '"') else ""} \
      ~{if defined(skip_split) then ("--skip-split " +  '"' + skip_split + '"') else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (yaml) then "--yaml" else ""} \
      ~{if (to_ml) then "--toml" else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(minimum_cdna_length) then ("--minimum-cdna-length " +  '"' + minimum_cdna_length + '"') else ""} \
      ~{if defined(max_intron_length) then ("--max-intron-length " +  '"' + max_intron_length + '"') else ""} \
      ~{if (strip_faulty_cds) then "--strip-faulty-cds" else ""} \
      ~{if defined(scoring) then ("--scoring " +  '"' + scoring + '"') else ""} \
      ~{if defined(copy_scoring) then ("--copy-scoring " +  '"' + copy_scoring + '"') else ""} \
      ~{if defined(_intronrange_intronrange) then ("-i " +  '"' + _intronrange_intronrange + '"') else ""} \
      ~{if defined(subloc_i_out) then ("--subloci-out " +  '"' + subloc_i_out + '"') else ""} \
      ~{if defined(mono_loci_out) then ("--monoloci-out " +  '"' + mono_loci_out + '"') else ""} \
      ~{if (no_pad) then "--no-pad" else ""} \
      ~{if (reference_update) then "--reference-update" else ""} \
      ~{if (only_reference_update) then "--only-reference-update" else ""} \
      ~{if (exclude_retained_introns) then "--exclude-retained-introns" else ""} \
      ~{if (keep_disrupted_cds) then "--keep-disrupted-cds" else ""} \
      ~{if (check_references) then "--check-references" else ""} \
      ~{if defined(min_clustering_cdna_overlap) then ("--min-clustering-cdna-overlap " +  '"' + min_clustering_cdna_overlap + '"') else ""} \
      ~{if defined(min_clustering_cds_overlap) then ("--min-clustering-cds-overlap " +  '"' + min_clustering_cds_overlap + '"') else ""} \
      ~{if (report_all_orfs) then "--report-all-orfs" else ""} \
      ~{if (report_all_external_metrics) then "--report-all-external-metrics" else ""} \
      ~{if (cds_only) then "--cds-only" else ""} \
      ~{if (as_cds_only) then "--as-cds-only" else ""} \
      ~{if (dai_jin) then "--daijin" else ""} \
      ~{if defined(blast_chunks) then ("--blast-chunks " +  '"' + blast_chunks + '"') else ""} \
      ~{if (use_blast) then "--use-blast" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(scheduler) then ("--scheduler " +  '"' + scheduler + '"') else ""} \
      ~{if defined(exe) then ("--exe " +  '"' + exe + '"') else ""} \
      ~{if defined(cluster_config) then ("--cluster_config " +  '"' + cluster_config + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.5--py39h70b41aa_0"
  }
  parameter_meta {
    full: "Random seed number. Default: 0."
    random_seed: "Generate a new random seed number (instead of the\\ndefault of 0)"
    strand_specific: "Boolean flag indicating whether all the assemblies are"
    gff: "Input GFF/GTF file(s), separated by comma"
    list: "Tab-delimited file containing rows with the following\\nformat: <file> <label> <strandedness(def. False)>\\n<score(optional, def. 0)> <is_reference(optional, def.\\nFalse)> <exclude_redundant(optional, def. True)>\\n<strip_cds(optional, def. False)>\\n<skip_split(optional, def. False)> \\\"strandedness\\\",\\n\\\"is_reference\\\", \\\"exclude_redundant\\\", \\\"strip_cds\\\" and\\n\\\"skip_split\\\" must be boolean values (True, False)\\n\\\"score\\\" must be a valid floating number."
    reference: "Fasta genomic reference."
    strand_specific_assemblies: "List of strand-specific assemblies among the inputs."
    labels: "Labels to attach to the IDs of the transcripts of the\\ninput files, separated by comma."
    codon_table: "Codon table to use. Default: 0 (ie Standard, NCBI #1,\\nbut only ATG is considered a valid start codon."
    external: "External configuration file to overwrite/add values\\nfrom. Parameters specified on the command line will\\ntake precedence over those present in the\\nconfiguration file."
    skip_split: "List of labels for which splitting will be disabled\\n(eg long reads such as PacBio)"
    json: "Output will be in JSON (default: inferred by filename,\\nwith TOML as fallback)."
    yaml: "Output will be in YAML (default: inferred by filename,\\nwith TOML as fallback)."
    to_ml: "Output will be in TOML (default: inferred by filename,\\nwith TOML as fallback)."
    out_dir: "Destination directory for the output."
    minimum_cdna_length: "Minimum cDNA length for transcripts."
    max_intron_length: "Maximum intron length for transcripts."
    strip_faulty_cds: "Flag. If set, transcripts with an incorrect CDS will\\nbe retained but with their CDS stripped. Default\\nbehaviour: the whole transcript will be considered\\ninvalid and discarded."
    scoring: "Scoring file to use. Mikado provides the following:\\nplant.yaml, mammalian.yaml, HISTORIC/plants.yaml,\\nHISTORIC/scerevisiae.yaml, HISTORIC/worm.yaml,\\nHISTORIC/plant.yaml, HISTORIC/athaliana_scoring.yaml,\\nHISTORIC/dmelanogaster_scoring.yaml,\\nHISTORIC/insects.yaml, HISTORIC/celegans_scoring.yaml,\\nHISTORIC/human.yaml, HISTORIC/hsapiens_scoring.yaml,\\nHISTORIC/mammalian.yaml"
    copy_scoring: "File into which to copy the selected scoring file, for\\nmodification."
    _intronrange_intronrange: "INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE\\nRange into which intron lengths should fall, as a\\ncouple of integers. Transcripts with intron lengths\\noutside of this range will be penalised. Default: (60,\\n900)"
    subloc_i_out: "Name of the optional subloci output. By default, this\\nwill not be produced."
    mono_loci_out: "Name of the optional monoloci output. By default, this\\nwill not be produced."
    no_pad: "Disable transcript padding. On by default."
    reference_update: "Flag. If switched on, Mikado will prioritise\\ntranscripts marked as reference and will consider any\\nother transcipt within loci only in reference to these\\nreference transcripts. Novel loci will still be\\nreported."
    only_reference_update: "Flag. If switched on, Mikado will only keep loci where\\nat least one of the transcripts is marked as\\n\\\"reference\\\". CAUTION: if no transcript has been marked\\nas reference, the output will be completely empty!"
    exclude_retained_introns: "Exclude all retained intron alternative splicing\\nevents from the final output. Default: False. Retained\\nintron events that do not dirsupt the CDS are kept by\\nMikado in the final output."
    keep_disrupted_cds: "Keep in the final output transcripts whose CDS is most\\nprobably disrupted by a retained intron event.\\nDefault: False. Mikado will try to detect these\\ninstances and exclude them from the final output."
    check_references: "Flag. If switched on, Mikado will also check reference\\nmodels against the general transcript requirements,\\nand will also consider them as potential fragments.\\nThis is useful in the context of e.g. updating an *ab-\\ninitio* results with data from RNASeq, protein\\nalignments, etc."
    min_clustering_cdna_overlap: "Minimum cDNA overlap between two transcripts for them\\nto be considered part of the same locus during the\\nlate picking stages. NOTE: if --min-cds-overlap is not\\nspecified, it will be set to this value! Default: 20%."
    min_clustering_cds_overlap: "Minimum CDS overlap between two transcripts for them\\nto be considered part of the same locus during the\\nlate picking stages. NOTE: if not specified, and\\n--min-cdna-overlap is specified on the command line,\\nmin-cds-overlap will be set to this value! Default:\\n20%."
    report_all_orfs: "Boolean switch. If set to true, all ORFs will be\\nreported, not just the primary."
    report_all_external_metrics: "Boolean switch. If activated, Mikado will report all\\navailable external metrics, not just those requested\\nfor in the scoring configuration. This might affect\\nspeed in Minos analyses."
    cds_only: "\\\"Flag. If set, Mikado will only look for overlap in\\nthe coding features when clustering transcripts\\n(unless one transcript is non-coding, in which case\\nthe whole transcript will be considered). Please note\\nthat Mikado will only consider the **best** ORF for\\nthis. Default: False, Mikado will consider transcripts\\nin their entirety."
    as_cds_only: "Flag. If set, Mikado will only consider the CDS to\\ndetermine whether a transcript is a valid alternative\\nsplicing event in a locus."
    dai_jin: "Flag. If set, the configuration file will be also\\nvalid for Daijin."
    blast_chunks: "Number of parallel DIAMOND/BLAST jobs to run. Default:\\n10."
    use_blast: "Flag. If switched on, Mikado will use BLAST instead of"
    mode: "[{nosplit,stringent,lenient,permissive,split} ...]\\nMode(s) in which Mikado will treat transcripts with\\nmultiple ORFs. - nosplit: keep the transcripts whole.\\n- stringent: split multi-orf transcripts if two\\nconsecutive ORFs have both BLAST hits and none of\\nthose hits is against the same target. - lenient:\\nsplit multi-orf transcripts as in stringent, and\\nadditionally, also when either of the ORFs lacks a\\nBLAST hit (but not both). - permissive: like lenient,\\nbut also split when both ORFs lack BLAST hits - split:\\nsplit multi-orf transcripts regardless of what BLAST\\ndata is available. If multiple modes are specified,\\nMikado will create a Daijin-compatible configuration\\nfile."
    scheduler: "Scheduler to use. Default: None - ie, either execute\\neverything on the local machine or use DRMAA to submit\\nand control jobs (recommended)."
    exe: "Configuration file for the executables."
    cluster_config: "Cluster configuration file to write to.\\n"
    out: "optional arguments:"
    strand_specific_dot: "--no-files            Remove all files-specific options from the printed"
    diamond_dot: "--use-transdecoder    Flag. If switched on, Mikado will use TransDecoder"
  }
  output {
    File out_stdout = stdout()
    File out_json = "${in_json}"
    File out_yaml = "${in_yaml}"
    File out_to_ml = "${in_to_ml}"
    Directory out_out_dir = "${in_out_dir}"
  }
}