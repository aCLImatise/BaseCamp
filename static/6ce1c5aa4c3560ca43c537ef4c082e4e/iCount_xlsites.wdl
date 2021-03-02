version 1.0

task ICountXlsites {
  input {
    Boolean? group_by
    Boolean? quant
    Boolean? segmentation
    Boolean? mismatches
    Boolean? mapq_th
    Boolean? multimax
    Boolean? gap_th
    Boolean? report_progress
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
    String bam
    String sites_unique
    String sites_multi
    String skipped
  }
  command <<<
    iCount xlsites \
      ~{bam} \
      ~{sites_unique} \
      ~{sites_multi} \
      ~{skipped} \
      ~{if (group_by) then "--group_by" else ""} \
      ~{if (quant) then "--quant" else ""} \
      ~{if (segmentation) then "--segmentation" else ""} \
      ~{if (mismatches) then "--mismatches" else ""} \
      ~{if (mapq_th) then "--mapq_th" else ""} \
      ~{if (multimax) then "--multimax" else ""} \
      ~{if (gap_th) then "--gap_th" else ""} \
      ~{if (report_progress) then "--report_progress" else ""} \
      ~{if (stdout_log) then "--stdout_log" else ""} \
      ~{if (file_log) then "--file_log" else ""} \
      ~{if (file_log_path) then "--file_logpath" else ""} \
      ~{if (results_file) then "--results_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    group_by: "Assign score of a read to either 'start', 'middle' or 'end' nucleotide (default: start)"
    quant: "Report number of 'cDNA' or number of 'reads' (default: cDNA)"
    segmentation: "File with custon segmentation format (obtained by ``iCount segment``) (default: None)"
    mismatches: "Reads on same position with random barcode differing less than\\n``mismatches`` are grouped together (default: 2)"
    mapq_th: "Ignore hits with MAPQ < mapq_th (default: 0)"
    multimax: "Ignore reads, mapped to more than ``multimax`` places (default: 50)"
    gap_th: "Reads with gaps less than gap_th are treated as if they have no gap (default: 4)"
    report_progress: "Switch to report progress (default: False)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
    bam: "Input BAM file with mapped reads"
    sites_unique: "Output BED6 file to store data from uniquely mapped reads"
    sites_multi: "Output BED6 file to store data from multi-mapped reads"
    skipped: "Output BAM file to store reads that do not map as expected by segmentation and\\nreference genome sequence. If read's second start does not fall on any of\\nsegmentation borders, it is considered problematic. If segmentation is not provided,\\nevery read in two parts with gap longer than gap_th is not used (skipped).\\nAll such reads are reported to the user for further exploration"
  }
  output {
    File out_stdout = stdout()
  }
}