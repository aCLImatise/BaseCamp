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
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}