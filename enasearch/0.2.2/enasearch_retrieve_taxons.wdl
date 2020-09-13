version 1.0

task EnasearchRetrieveTaxons {
  input {
    String? ids
    String? display
    String? result
    File? download
    File? file
    Int? offset
    Int? length
    Int? subseq_range
    Boolean? expanded
    Boolean? header
  }
  command <<<
    enasearch retrieve_taxons \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(display) then ("--display " +  '"' + display + '"') else ""} \
      ~{if defined(result) then ("--result " +  '"' + result + '"') else ""} \
      ~{if defined(download) then ("--download " +  '"' + download + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(subseq_range) then ("--subseq_range " +  '"' + subseq_range + '"') else ""} \
      ~{if (expanded) then "--expanded" else ""} \
      ~{if (header) then "--header" else ""}
  >>>
  parameter_meta {
    ids: "Ids for taxon to return [multiple]  [required]"
    display: "Display option to specify the display format\\n(accessible with get_display_options)  [required]"
    result: "Id of a taxonomy result (accessible with\\nget_taxonomy_results)"
    download: "Download option to specify that records are to be\\nsaved in a file (used with file option, list\\naccessible with get_download_options)"
    file: "File to save the content of the search (used with\\ndownload option)"
    offset: "RANGE  First record to get (used only for display different\\nof fasta and fastq"
    length: "RANGE  Number of records to retrieve (used only for display\\ndifferent of fasta and fastq"
    subseq_range: "Range for subsequences (integer start and stop\\nseparated by a -)"
    expanded: "Determine if a CON record is expanded"
    header: "To obtain only the header of a record"
  }
  output {
    File out_stdout = stdout()
  }
}