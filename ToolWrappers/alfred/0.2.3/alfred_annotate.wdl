version 1.0

task AlfredAnnotate {
  input {
    Boolean? arg_max_distance
    Boolean? arg_genemotiflevel_output
    Boolean? arg_annotated_peaks
    Boolean? nearest_feature_only
    Boolean? arg_gtfgff_file
    Boolean? arg_genename_gtfgff
    Boolean? arg_gene_gtfgff
    Boolean? arg_bed_file
    Boolean? arg_motif_file
    Boolean? arg_reference_file
    Boolean? q
    File? arg_gzipped_output
    Boolean? exclude_overlapping_hits
    String peaks_dot_bed
  }
  command <<<
    alfred annotate \
      ~{peaks_dot_bed} \
      ~{if (arg_max_distance) then "-d" else ""} \
      ~{if (arg_genemotiflevel_output) then "-u" else ""} \
      ~{if (arg_annotated_peaks) then "-o" else ""} \
      ~{if (nearest_feature_only) then "-n" else ""} \
      ~{if (arg_gtfgff_file) then "-g" else ""} \
      ~{if (arg_genename_gtfgff) then "-i" else ""} \
      ~{if (arg_gene_gtfgff) then "-f" else ""} \
      ~{if (arg_bed_file) then "-b" else ""} \
      ~{if (arg_motif_file) then "-m" else ""} \
      ~{if (arg_reference_file) then "-r" else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if (arg_gzipped_output) then "-p" else ""} \
      ~{if (exclude_overlapping_hits) then "-x" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alfred:0.2.3--hf3ca161_0"
  }
  parameter_meta {
    arg_max_distance: "[ --distance ] arg (=0)            max. distance (0: overlapping features\\nonly)"
    arg_genemotiflevel_output: "[ --outgene ] arg (=\\\"gene.bed\\\")    gene/motif-level output"
    arg_annotated_peaks: "[ --outfile ] arg (=\\\"anno.bed\\\")    annotated peaks output"
    nearest_feature_only: "[ --nearest ]                      nearest feature only"
    arg_gtfgff_file: "[ --gtf ] arg                      gtf/gff3 file"
    arg_genename_gtfgff: "[ --id ] arg (=gene_name)          gtf/gff3 attribute"
    arg_gene_gtfgff: "[ --feature ] arg (=gene)          gtf/gff3 feature"
    arg_bed_file: "[ --bed ] arg                      bed file"
    arg_motif_file: "[ --motif ] arg                    motif file in jaspar or raw format"
    arg_reference_file: "[ --reference ] arg                reference file"
    q: "[ --quantile ] arg (=0.949999988)  motif quantile score [0,1]"
    arg_gzipped_output: "[ --position ] arg                 gzipped output file of motif hits"
    exclude_overlapping_hits: "[ --exclude ]                      exclude overlapping hits of the same\\nmotif\\n"
    peaks_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_gzipped_output = "${in_arg_gzipped_output}"
  }
}