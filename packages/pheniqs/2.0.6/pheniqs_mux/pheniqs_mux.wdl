version 1.0

task PheniqsMux {
  input {
    File? path_input_file
    File? path_output_file
    File? config
    File? report
    String? base_input
    String? base_output
    Boolean? sense_input
    Boolean? filtered
    Int? leading
    String? format
    String? compression
    String? token
    String? platform
    Boolean? quality
    Boolean? validate
    Boolean? distance
    Boolean? compile
    Boolean? static
    Boolean? job
    Int? threads
    Int? buffer
    Int? precision
    String? i_slash_input
    String? oslash_output
    Directory? oslash_base_output
    String? v_slash_validate
    File? s_slash_sense_input
  }
  command <<<
    pheniqs mux \
      ~{if defined(path_input_file) then ("--input " +  '"' + path_input_file + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(base_input) then ("--base-input " +  '"' + base_input + '"') else ""} \
      ~{if defined(base_output) then ("--base-output " +  '"' + base_output + '"') else ""} \
      ~{if (sense_input) then "--sense-input" else ""} \
      ~{if (filtered) then "--filtered" else ""} \
      ~{if defined(leading) then ("--leading " +  '"' + leading + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(compression) then ("--compression " +  '"' + compression + '"') else ""} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(platform) then ("--platform " +  '"' + platform + '"') else ""} \
      ~{if (quality) then "--quality" else ""} \
      ~{if (validate) then "--validate" else ""} \
      ~{if (distance) then "--distance" else ""} \
      ~{if (compile) then "--compile" else ""} \
      ~{if (static) then "--static" else ""} \
      ~{if (job) then "--job" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(buffer) then ("--buffer " +  '"' + buffer + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(i_slash_input) then ("-i/--input " +  '"' + i_slash_input + '"') else ""} \
      ~{if defined(oslash_output) then ("-o/--output " +  '"' + oslash_output + '"') else ""} \
      ~{if defined(oslash_base_output) then ("-O/--base-output " +  '"' + oslash_base_output + '"') else ""} \
      ~{if defined(v_slash_validate) then ("-V/--validate " +  '"' + v_slash_validate + '"') else ""} \
      ~{if defined(s_slash_sense_input) then ("-s/--sense-input " +  '"' + s_slash_sense_input + '"') else ""}
  >>>
  parameter_meta {
    path_input_file: "Path to an input file. May be repeated."
    path_output_file: "Path to an output file. May be repeated."
    config: "Path to configuration file"
    report: "Path to report file"
    base_input: "Base input url"
    base_output: "Base output url"
    sense_input: "Sense input segment layout"
    filtered: "Include reads not passing vendor QC in output"
    leading: "Leading read segment index"
    format: "Defult output format"
    compression: "Defult output compression"
    token: ":START:END    Output read token"
    platform: "Sequencing platform"
    quality: "Enable quality control"
    validate: "Validate configuration file and emit a report"
    distance: "Display pairwise barcode distance during validation"
    compile: "Compiled JSON configuration file"
    static: "Static configuration JSON file"
    job: "Include a copy of the compiled job in the report"
    threads: "Thread pool size"
    buffer: "Feed buffer capacity"
    precision: "Output floating point precision"
    i_slash_input: "to /dev/stdin with inputing layout sensing."
    oslash_output: "to /dev/stdout with SAM format."
    oslash_base_output: "to the working directory."
    v_slash_validate: "job excution and only emit information."
    s_slash_sense_input: "guess input layout by examining the first few reads of each input file."
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}