version 1.0

task Variantbreak {
  input {
    File? annotation_file_dir
    File? filter_file_dir
    Int? del_annotate_size
    Int? merge_buffer
    Int? promoter_size
    Int? max_annotation
    Boolean? cluster_sample
    Boolean? auto_filter
    File? sep
    File? filename
    Boolean? quiet
    String exist_dot
  }
  command <<<
    variantbreak \
      ~{exist_dot} \
      ~{if defined(annotation_file_dir) then ("--annotation_file_dir " +  '"' + annotation_file_dir + '"') else ""} \
      ~{if defined(filter_file_dir) then ("--filter_file_dir " +  '"' + filter_file_dir + '"') else ""} \
      ~{if defined(del_annotate_size) then ("--del_annotate_size " +  '"' + del_annotate_size + '"') else ""} \
      ~{if defined(merge_buffer) then ("--merge_buffer " +  '"' + merge_buffer + '"') else ""} \
      ~{if defined(promoter_size) then ("--promoter_size " +  '"' + promoter_size + '"') else ""} \
      ~{if defined(max_annotation) then ("--max_annotation " +  '"' + max_annotation + '"') else ""} \
      ~{if (cluster_sample) then "--cluster_sample" else ""} \
      ~{if (auto_filter) then "--auto_filter" else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    annotation_file_dir: "path to single annotation file or directory containing annotation\\nfiles of GTF/GFF or BED formats. Formats: .gtf/.gff/.gff3/.bed"
    filter_file_dir: "path to single filter file or directory containing filter files of\\nBED format. Format: .bed"
    del_annotate_size: "Deletions with sizes lower or equal to this value will have the\\nentire deleted region annotated. Any genes that intersect with\\nthe deleted region will be included as annotation. On the contrary,\\nif deletion size is greater than this value, only the deletion\\nbreakends will be annotated, omitting any annotation of the middle\\ndeleted region. In other words, only genes intersecting with the\\ndeletion breakends will be included as annotation. This is done to\\nreduce false annotations due to false large deletions. Note that\\nthe value to be set is an absolute deletion size, do not use minus\\n'-'. Use value '-1' to disable this threshold and annotate all\\ndeleted regions despite of size. [20000]"
    merge_buffer: "nucleotide length buffer for SV breakend clustering [400]"
    promoter_size: "length in base-pairs upstream of TSS to define promoter region\\n[1000]"
    max_annotation: "maximum number of annotation entries to be recorded in the\\ndataframe for each SV [3]]"
    cluster_sample: "performs hierarchical clustering on samples"
    auto_filter: "automatically removes variants that intersected\\nwith all filter BED files"
    sep: "single character field delimiter for output dataframe CSV file\\n(e.g. '\\t' for tab or ',' for comma) [,]"
    filename: "File name prefix of output files [output]"
    quiet: "hide verbose"
    exist_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_sep = "${in_sep}"
    File out_filename = "${in_filename}"
  }
}