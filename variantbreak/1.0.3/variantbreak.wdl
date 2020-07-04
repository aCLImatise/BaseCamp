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
    String? sep
    String? filename
    Boolean? quiet
  }
  command <<<
    variantbreak \
      ~{if defined(annotation_file_dir) then ("--annotation_file_dir " +  '"' + annotation_file_dir + '"') else ""} \
      ~{if defined(filter_file_dir) then ("--filter_file_dir " +  '"' + filter_file_dir + '"') else ""} \
      ~{if defined(del_annotate_size) then ("--del_annotate_size " +  '"' + del_annotate_size + '"') else ""} \
      ~{if defined(merge_buffer) then ("--merge_buffer " +  '"' + merge_buffer + '"') else ""} \
      ~{if defined(promoter_size) then ("--promoter_size " +  '"' + promoter_size + '"') else ""} \
      ~{if defined(max_annotation) then ("--max_annotation " +  '"' + max_annotation + '"') else ""} \
      ~{true="--cluster_sample" false="" cluster_sample} \
      ~{true="--auto_filter" false="" auto_filter} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    annotation_file_dir: "path to single annotation file or directory containing annotation  files of GTF/GFF or BED formats. Formats: .gtf/.gff/.gff3/.bed"
    filter_file_dir: "path to single filter file or directory containing filter files of  BED format. Format: .bed"
    del_annotate_size: "Deletions with sizes lower or equal to this value will have the  entire deleted region annotated. Any genes that intersect with  the deleted region will be included as annotation. On the contrary,  if deletion size is greater than this value, only the deletion  breakends will be annotated, omitting any annotation of the middle  deleted region. In other words, only genes intersecting with the  deletion breakends will be included as annotation. This is done to  reduce false annotations due to false large deletions. Note that  the value to be set is an absolute deletion size, do not use minus  '-'. Use value '-1' to disable this threshold and annotate all  deleted regions despite of size. [20000]"
    merge_buffer: "nucleotide length buffer for SV breakend clustering [400]"
    promoter_size: "length in base-pairs upstream of TSS to define promoter region  [1000]"
    max_annotation: "maximum number of annotation entries to be recorded in the  dataframe for each SV [3]]"
    cluster_sample: "performs hierarchical clustering on samples"
    auto_filter: "automatically removes variants that intersected with all filter BED files"
    sep: "single character field delimiter for output dataframe CSV file  (e.g. '\t' for tab or ',' for comma) [,]"
    filename: "File name prefix of output files [output]"
    quiet: "hide verbose"
  }
}