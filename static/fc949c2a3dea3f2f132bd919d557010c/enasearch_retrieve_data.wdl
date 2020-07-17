version 1.0

task EnasearchRetrieveData {
  input {
    String? ids
    String? display
    String? download
    File? file
    Int? offset
    Int? length
    String? subseq_range
    Boolean? expanded
    Boolean? header
  }
  command <<<
    enasearch retrieve_data \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(display) then ("--display " +  '"' + display + '"') else ""} \
      ~{if defined(download) then ("--download " +  '"' + download + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(subseq_range) then ("--subseq_range " +  '"' + subseq_range + '"') else ""} \
      ~{true="--expanded" false="" expanded} \
      ~{true="--header" false="" header}
  >>>
  parameter_meta {
    ids: "Ids for records to return (other than Taxon and Project) [multiple]  [required]"
    display: "Display option to specify the display format (accessible with get_display_options)  [required]"
    download: "Download option to specify that records are to be saved in a file (used with file option, list accessible with get_download_options)"
    file: "File to save the content of the search (used with download option)"
    offset: "RANGE  First record to get (used only for display different of  fasta and fastq"
    length: "RANGE  Number of records to retrieve (used only for display different of fasta and fastq"
    subseq_range: "Range for subsequences (integer start and stop separated  by a -)"
    expanded: "Determine if a CON record is expanded"
    header: "To obtain only the header of a record"
  }
}