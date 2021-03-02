version 1.0

task RgiMain {
  input {
    File? input_sequence
    File? output_file
    String? input_type
    String? alignment_tool
    Int? num_threads
    Boolean? include_loose
    Boolean? local
    Boolean? clean
    Boolean? debug
    Boolean? low_quality
    String? data
    Boolean? split_prodigal_jobs
    String hits
  }
  command <<<
    rgi main \
      ~{hits} \
      ~{if defined(input_sequence) then ("--input_sequence " +  '"' + input_sequence + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{if defined(alignment_tool) then ("--alignment_tool " +  '"' + alignment_tool + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if (include_loose) then "--include_loose" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (low_quality) then "--low_quality" else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if (split_prodigal_jobs) then "--split_prodigal_jobs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sequence: "input file must be in either FASTA (contig and\\nprotein) or gzip format! e.g myFile.fasta,\\nmyFasta.fasta.gz"
    output_file: "output folder and base filename"
    input_type: "specify data input type (default = contig)"
    alignment_tool: "specify alignment tool (default = BLAST)"
    num_threads: "number of threads (CPUs) to use in the BLAST search\\n(default=8)"
    include_loose: "include loose hits in addition to strict and perfect"
    local: "use local database (default: uses database in\\nexecutable directory)"
    clean: "removes temporary files"
    debug: "debug mode"
    low_quality: "use for short contigs to predict partial genes"
    data: "specify a data-type (default = NA)"
    split_prodigal_jobs: "run multiple prodigal jobs simultaneously for contigs\\nin a fasta file\\n"
    hits: "--exclude_nudge       exclude hits nudged from loose to strict hits"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}