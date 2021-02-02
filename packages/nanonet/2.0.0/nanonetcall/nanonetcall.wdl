version 1.0

task Nanonetcall {
  input {
    Directory? watch
    String? section
    Boolean? no_event_detect
    String? output_name_output
    Boolean? no_fast_q
    Boolean? no_write_events
    String? strand_list
    Int? limit
    Int? min_len
    Int? max_len
    String? model
    Int? jobs
    String? trans
    Boolean? no_fast_decode
    Boolean? no_exc_open_cl
    Boolean? no_list_platforms
    Array[String] platforms
    String path_default_none
    Float eggs_slash_nano_net_two_dot_zero_dot_zero_py_two_dot_seven_linux_x_eight_six_six_four_dot_egg
  }
  command <<<
    nanonetcall \
      ~{path_default_none} \
      ~{eggs_slash_nano_net_two_dot_zero_dot_zero_py_two_dot_seven_linux_x_eight_six_six_four_dot_egg} \
      ~{if defined(watch) then ("--watch " +  '"' + watch + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if (no_event_detect) then "--no-event_detect" else ""} \
      ~{if defined(output_name_output) then ("--output " +  '"' + output_name_output + '"') else ""} \
      ~{if (no_fast_q) then "--no-fastq" else ""} \
      ~{if (no_write_events) then "--no-write_events" else ""} \
      ~{if defined(strand_list) then ("--strand_list " +  '"' + strand_list + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max_len " +  '"' + max_len + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(trans) then ("--trans " +  '"' + trans + '"') else ""} \
      ~{if (no_fast_decode) then "--no-fast_decode" else ""} \
      ~{if (no_exc_open_cl) then "--no-exc_opencl" else ""} \
      ~{if (no_list_platforms) then "--no-list_platforms" else ""} \
      ~{if defined(platforms) then ("--platforms " +  '"' + platforms + '"') else ""}
  >>>
  parameter_meta {
    watch: "Switch to watching folder, argument value used as\\ntimeout period. (default: None)"
    section: "Section of read for which to produce basecalls, will\\noverride that stored in model file. (default: None)"
    no_event_detect: "Perform event detection, else use existing event data\\n(Default: --event_detect) (default: True)"
    output_name_output: "Output name, output will be in fasta format. (default:\\nNone)"
    no_fast_q: "Output fastq rather than fasta. (Default: --no-fastq)\\n(default: False)"
    no_write_events: "Write event datasets to .fast5. (Default: --no-\\nwrite_events) (default: False)"
    strand_list: "List of reads to process. (default: None)"
    limit: "Limit the number of input for processing. (default:\\nNone)"
    min_len: "Min. read length (events) to basecall. (default: 500)"
    max_len: "Max. read length (events) to basecall. (default:\\n15000)"
    model: "Trained ANN. (default: /root/.cache/Python-"
    jobs: "No of decoding jobs to run in parallel. (default: 1)"
    trans: "step skip\\nBase transition probabilities (default: None)"
    no_fast_decode: "Use simple, fast decoder with no transition estimates.\\n(Default: --no-fast_decode) (default: False)"
    no_exc_open_cl: "Do not use CPU alongside OpenCL, overrides --jobs.\\n(Default: --no-exc_opencl) (default: False)"
    no_list_platforms: "Output list of available OpenCL GPU platforms.\\n(Default: --no-list_platforms) (default: False)"
    platforms: "List of OpenCL GPU platforms and devices to be used in\\na format VENDOR:DEVICE:N_Files space separated, i.e.\\n--platforms nvidia:0:1 amd:0:2 amd:1:2. (default:\\nNone)\\n"
    path_default_none: "A path to fast5 files. (default: None)"
    eggs_slash_nano_net_two_dot_zero_dot_zero_py_two_dot_seven_linux_x_eight_six_six_four_dot_egg: "tmp/nanonet/data/default_template.npy)"
  }
  output {
    File out_stdout = stdout()
  }
}