version 1.0

task PanGenomeCoreAlignment {
  input {
    File? output_filename
    Float? cd
    Directory? directory_containing_gene
    String? gene_presence_absence
    Boolean? allow_paralogs
    Boolean? delete_intermediate_files
    Boolean? verbose_output_stdout
  }
  command <<<
    pan_genome_core_alignment \
      ~{if defined(output_filename) then ("-o " +  '"' + output_filename + '"') else ""} \
      ~{if defined(cd) then ("-cd " +  '"' + cd + '"') else ""} \
      ~{if defined(directory_containing_gene) then ("-m " +  '"' + directory_containing_gene + '"') else ""} \
      ~{if defined(gene_presence_absence) then ("-s " +  '"' + gene_presence_absence + '"') else ""} \
      ~{if (allow_paralogs) then "-p" else ""} \
      ~{if (delete_intermediate_files) then "-z" else ""} \
      ~{if (verbose_output_stdout) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_filename: "output filename [core_gene_alignment.aln]"
    cd: "percentage of isolates a gene must be in to be core [99]"
    directory_containing_gene: "directory containing gene multi-FASTAs [pan_genome_sequences]"
    gene_presence_absence: "gene presence and absence spreadsheet [gene_presence_absence.csv]"
    allow_paralogs: "allow paralogs"
    delete_intermediate_files: "dont delete intermediate files"
    verbose_output_stdout: "verbose output to STDOUT"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}