version 1.0

task ICountRnamaps {
  input {
    Boolean? implicit_handling
    Boolean? mis
    Boolean? mapq_th
    Boolean? holesize_th
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
    String rna_map_type
    String bam
    String segmentation
    String out_file
    String strange
    String cross_transcript
  }
  command <<<
    iCount rnamaps \
      ~{rna_map_type} \
      ~{bam} \
      ~{segmentation} \
      ~{out_file} \
      ~{strange} \
      ~{cross_transcript} \
      ~{if (implicit_handling) then "--implicit_handling" else ""} \
      ~{if (mis) then "-mis" else ""} \
      ~{if (mapq_th) then "--mapq_th" else ""} \
      ~{if (holesize_th) then "--holesize_th" else ""} \
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    implicit_handling: "Can be 'closest' or 'split'. In case of implicit read - split score to\\nboth neighbours or give it just to the closest neighbour (default: closest)"
    mis: ", --mismatches   Reads on same position with random barcode differing less than\\n``mismatches`` are grouped together (default: 2)"
    mapq_th: "Ignore hits with MAPQ < mapq_th (default: 0)"
    holesize_th: "Raeads with size of holes less than holesize_th are treted as if they\\nwould have no holes (default: 4)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    rna_map_type: "position    all     explicit"
    bam: "BAM file with alligned reads"
    segmentation: "GTF file with segmentation. Should be a file produced by function\\n`get_regions`"
    out_file: "Output file with analysis results"
    strange: "File with strange propertieas obtained when processing bam file"
    cross_transcript: "File with reads spanning over multiple transcripts or multiple genes"
  }
  output {
    File out_stdout = stdout()
  }
}