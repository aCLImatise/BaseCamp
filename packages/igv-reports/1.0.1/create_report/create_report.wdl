version 1.0

task CreateReport {
  input {
    String? type
    File? ideogram
    Array[String] tracks
    Array[String] track_config
    File? template
    File? output_file_name
    Array[String] info_columns
    Array[String] info_columns_prefixes
    Array[String] sample_columns
    String? flanking
    Boolean? standalone
    String? title
    String sites
    String fast_a
  }
  command <<<
    create_report \
      ~{sites} \
      ~{fast_a} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(ideogram) then ("--ideogram " +  '"' + ideogram + '"') else ""} \
      ~{if defined(tracks) then ("--tracks " +  '"' + tracks + '"') else ""} \
      ~{if defined(track_config) then ("--track-config " +  '"' + track_config + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(info_columns) then ("--info-columns " +  '"' + info_columns + '"') else ""} \
      ~{if defined(info_columns_prefixes) then ("--info-columns-prefixes " +  '"' + info_columns_prefixes + '"') else ""} \
      ~{if defined(sample_columns) then ("--sample-columns " +  '"' + sample_columns + '"') else ""} \
      ~{if defined(flanking) then ("--flanking " +  '"' + flanking + '"') else ""} \
      ~{if (standalone) then "--standalone" else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""}
  >>>
  parameter_meta {
    type: "Report type. Possible values are mutation and\\njunctions. Default is mutation"
    ideogram: "ideogram file in UCSC cytoIdeo format"
    tracks: "list of track files"
    track_config: "track json file"
    template: "html template file"
    output_file_name: "output file name"
    info_columns: "list of VCF info field names to include in variant\\ntable"
    info_columns_prefixes: "list of prefixes of VCF info field names to include in\\nvariant table"
    sample_columns: "list of VCF sample/format field names to include in\\nvariant table"
    flanking: "genomic region to include either side of variant"
    standalone: "Print more data"
    title: "optional title string"
    sites: "vcf file defining variants, required"
    fast_a: "reference fasta file, required"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}