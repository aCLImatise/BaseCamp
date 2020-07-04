version 1.0

task ComputeMatrixOperationsSort {
  input {
    String? matrix_file
    String? out_filename
    Array[String] regions_filename
    String? transcript_id
    String? transcript_id_designator
    String example
    String usage
  }
  command <<<
    computeMatrixOperations sort \
      ~{example} \
      ~{usage} \
      ~{if defined(matrix_file) then ("--matrixFile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(regions_filename) then ("--regionsFileName " +  '"' + regions_filename + '"') else ""} \
      ~{if defined(transcript_id) then ("--transcriptID " +  '"' + transcript_id + '"') else ""} \
      ~{if defined(transcript_id_designator) then ("--transcript_id_designator " +  '"' + transcript_id_designator + '"') else ""}
  >>>
  parameter_meta {
    matrix_file: "Matrix file from the computeMatrix tool. (default: None)"
    out_filename: "Output file name (default: None)"
    regions_filename: "File name(s), in BED or GTF format, containing the regions. If multiple bed files are given, each one is considered a group that can be plotted separately. Also, adding a \"#\" symbol in the bed file causes all the regions until the previous \"#\" to be considered one group. Alternatively for BED files, putting deepTools_group in the header can be used to indicate a column with group labels. Note that these should be sorted such that all group entries are together. (default: None)"
    transcript_id: "When a GTF file is used to provide regions, only entries with this value as their feature (column 3) will be processed as transcripts. (Default: transcript)"
    transcript_id_designator: "Each region has an ID (e.g., ACTB) assigned to it, which for BED files is either column 4 (if it exists) or the interval bounds. For GTF files this is instead stored in the last column as a key:value pair (e.g., as 'transcript_id \"ACTB\"', for a key of transcript_id and a value of ACTB). In some cases it can be convenient to use a different identifier. To do so, set this to the desired key. (Default: transcript_id)"
    example: ""
    usage: ""
  }
}