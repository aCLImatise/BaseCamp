version 1.0

task ChimerascanRelativeBedpeToCG {
  input {
    String? gene_annotation
    String? output_filename_stdout
    Boolean? v
    String chimerascans_relative_bedpe
  }
  command <<<
    chimerascan-relative-bedpe-to-CG \
      ~{chimerascans_relative_bedpe} \
      ~{if defined(gene_annotation) then ("--gene-annotation " +  '"' + gene_annotation + '"') else ""} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    gene_annotation: "gene_features.txt file used by chimersacan"
    output_filename_stdout: "output filename; '-' for stdout"
    v: ""
    chimerascans_relative_bedpe: "Chimerascan's relative BEDPE file (e.g. discordant_reads.srt.bedpe or tmp_chimeras.sorted3p.bedpe)"
  }
}