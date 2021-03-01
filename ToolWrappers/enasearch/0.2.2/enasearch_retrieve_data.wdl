version 1.0

task EnasearchRetrieveData {
  input {
    String? ids
    String? display
    File? download
    File? file_save_content
    Int? offset
    Int? length
    Int? subseq_range
    Boolean? expanded
    Boolean? header
    String of
    String separated
  }
  command <<<
    enasearch retrieve_data \
      ~{of} \
      ~{separated} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(display) then ("--display " +  '"' + display + '"') else ""} \
      ~{if defined(download) then ("--download " +  '"' + download + '"') else ""} \
      ~{if defined(file_save_content) then ("--file " +  '"' + file_save_content + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(subseq_range) then ("--subseq_range " +  '"' + subseq_range + '"') else ""} \
      ~{if (expanded) then "--expanded" else ""} \
      ~{if (header) then "--header" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ids: "Ids for records to return (other than Taxon and\\nProject) [multiple]  [required]"
    display: "Display option to specify the display format\\n(accessible with get_display_options)  [required]"
    download: "Download option to specify that records are to be\\nsaved in a file (used with file option, list\\naccessible with get_download_options)"
    file_save_content: "File to save the content of the search (used with\\ndownload option)"
    offset: "RANGE  First record to get (used only for display different"
    length: "RANGE  Number of records to retrieve (used only for display\\ndifferent of fasta and fastq"
    subseq_range: "Range for subsequences (integer start and stop"
    expanded: "Determine if a CON record is expanded"
    header: "To obtain only the header of a record"
    of: "fasta and fastq"
    separated: "by a -)"
  }
  output {
    File out_stdout = stdout()
  }
}