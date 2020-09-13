version 1.0

task Yanagiba {
  input {
    File? in_file
    File? summary_file
    File? outfile
    Int? min_len
    Int? min_qual
    Int? head_trim
    String? tail_trim
    Boolean? force_unique
  }
  command <<<
    yanagiba \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(summary_file) then ("--summaryfile " +  '"' + summary_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_qual) then ("--minqual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(head_trim) then ("--headtrim " +  '"' + head_trim + '"') else ""} \
      ~{if defined(tail_trim) then ("--tailtrim " +  '"' + tail_trim + '"') else ""} \
      ~{if (force_unique) then "--forceunique" else ""}
  >>>
  parameter_meta {
    in_file: "Input fastq.gz file."
    summary_file: "Albacore summary file with header row."
    outfile: "Write filtered reads to this file in .bgz format."
    min_len: "Exclude reads shorter than this length. Default: 0"
    min_qual: "Minimum quality score to retain a read. Default: 10"
    head_trim: "Trim x bases from begining of each read. Default: 0"
    tail_trim: "Trim x bases from end of each read. Default: None"
    force_unique: "Enforce unique reads. Only store first instance of a\\nread from fastq input where readID occurs multiple\\ntimes.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}