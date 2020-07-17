version 1.0

task QualimapCompCounts {
  input {
    String? algorithm
    String? bam
    String? gtf
    String? id
    String? out
    String? sequencing_protocol
    Boolean? paired
    Boolean? sorted
    String? type
    String? arg
  }
  command <<<
    qualimap comp-counts \
      ~{arg} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(sequencing_protocol) then ("--sequencing-protocol " +  '"' + sequencing_protocol + '"') else ""} \
      ~{true="--paired" false="" paired} \
      ~{true="--sorted" false="" sorted} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    algorithm: "Counting algorithm: uniquely-mapped-reads(default) or proportional"
    bam: "Mapping file in BAM format"
    gtf: "Region file in GTF, GFF or BED format. If GTF format is provided, counting is based on attributes, otherwise based on feature name"
    id: "GTF-specific. Attribute of the GTF to be used as feature ID. Regions with the same ID will be aggregated as part of the same feature. Default: gene_id."
    out: "Output file of coverage report."
    sequencing_protocol: "Sequencing library protocol: strand-specific-forward, strand-specific-reverse or non-strand-specific (default)"
    paired: "Setting this flag for paired-end experiments will result in counting fragments instead of reads"
    sorted: "This flag indicates that the input file is already sorted by name. If not set, additional sorting by name will be performed. Only required for paired-end analysis."
    type: "GTF-specific. Value of the third column of the GTF considered for counting. Other types will be ignored. Default: exon"
    arg: ""
  }
}