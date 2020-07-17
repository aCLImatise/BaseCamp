version 1.0

task CreateReport {
  input {
    String? ideogram
    Array[String] tracks
    String? template
    String? output_file_name
    Array[String] info_columns
    Array[String] info_columns_prefixes
    Array[String] sample_columns
    String? flanking
    Boolean? standalone
    String sites
    String fast_a
  }
  command <<<
    create_report \
      ~{sites} \
      ~{fast_a} \
      ~{if defined(ideogram) then ("--ideogram " +  '"' + ideogram + '"') else ""} \
      ~{if defined(tracks) then ("--tracks " +  '"' + tracks + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(info_columns) then ("--info-columns " +  '"' + info_columns + '"') else ""} \
      ~{if defined(info_columns_prefixes) then ("--info-columns-prefixes " +  '"' + info_columns_prefixes + '"') else ""} \
      ~{if defined(sample_columns) then ("--sample-columns " +  '"' + sample_columns + '"') else ""} \
      ~{if defined(flanking) then ("--flanking " +  '"' + flanking + '"') else ""} \
      ~{true="--standalone" false="" standalone}
  >>>
  parameter_meta {
    ideogram: "ideogram file in UCSC cytoIdeo format"
    tracks: "list of track files"
    template: "html template file"
    output_file_name: "output file name"
    info_columns: "list of VCF info field names to include in variant table"
    info_columns_prefixes: "list of prefixes of VCF info field names to include in variant table"
    sample_columns: "list of VCF sample/format field names to include in variant table"
    flanking: "genomic region to include either side of variant"
    standalone: "Print more data"
    sites: "vcf file defining variants, required"
    fast_a: "reference fasta file, required"
  }
}