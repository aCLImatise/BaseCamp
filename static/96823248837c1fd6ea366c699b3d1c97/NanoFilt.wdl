version 1.0

task NanoFilt {
  input {
    File? log_file
    Int? length
    Int? maxlength
    String? quality
    Float? ming_c
    Int? max_gc
    String? head_crop
    String? tail_crop
    File? summary
    String? read_type
    Boolean? v
    String input_uncompressed_file
  }
  command <<<
    NanoFilt \
      ~{input_uncompressed_file} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(maxlength) then ("--maxlength " +  '"' + maxlength + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(ming_c) then ("--minGC " +  '"' + ming_c + '"') else ""} \
      ~{if defined(max_gc) then ("--maxGC " +  '"' + max_gc + '"') else ""} \
      ~{if defined(head_crop) then ("--headcrop " +  '"' + head_crop + '"') else ""} \
      ~{if defined(tail_crop) then ("--tailcrop " +  '"' + tail_crop + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(read_type) then ("--readtype " +  '"' + read_type + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_file: "Specify the path and filename for the log file."
    length: "Filter on a minimum read length"
    maxlength: "Filter on a maximum read length"
    quality: "Filter on a minimum average read quality score"
    ming_c: "Sequences must have GC content >= to this. Float between 0.0 and 1.0. Ignored if\\nusing summary file."
    max_gc: "Sequences must have GC content <= to this. Float between 0.0 and 1.0. Ignored if\\nusing summary file."
    head_crop: "Trim n nucleotides from start of read"
    tail_crop: "Trim n nucleotides from end of read"
    summary: "Use albacore or guppy summary file for quality scores"
    read_type: "Which read type to extract information about from summary. Options are 1D, 2D or\\n1D2"
    v: ""
    input_uncompressed_file: "input, uncompressed fastq file"
  }
  output {
    File out_stdout = stdout()
  }
}