version 1.0

task QualimapCompcounts {
  input {
    String? algorithm
    File? bam
    File? gtf
    String? id
    File? out
    String? sequencing_protocol
    Boolean? paired
    Boolean? sorted
    String? type
    String? arg
  }
  command <<<
    qualimap comp_counts \
      ~{arg} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(sequencing_protocol) then ("--sequencing-protocol " +  '"' + sequencing_protocol + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    algorithm: "Counting algorithm:\\nuniquely-mapped-reads(default) or proportional"
    bam: "Mapping file in BAM format"
    gtf: "Region file in GTF, GFF or BED format. If GTF\\nformat is provided, counting is based on\\nattributes, otherwise based on feature name"
    id: "GTF-specific. Attribute of the GTF to be used\\nas feature ID. Regions with the same ID will\\nbe aggregated as part of the same feature.\\nDefault: gene_id."
    out: "Output file of coverage report."
    sequencing_protocol: "Sequencing library protocol:\\nstrand-specific-forward,\\nstrand-specific-reverse or non-strand-specific\\n(default)"
    paired: "Setting this flag for paired-end experiments\\nwill result in counting fragments instead of\\nreads"
    sorted: "This flag indicates that the input file is\\nalready sorted by name. If not set, additional\\nsorting by name will be performed. Only\\nrequired for paired-end analysis."
    type: "GTF-specific. Value of the third column of the\\nGTF considered for counting. Other types will\\nbe ignored. Default: exon\\n"
    arg: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}