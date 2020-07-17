version 1.0

task Nanonetcall {
  input {
    String? watch
    String? section
    Boolean? no_event_detect
    String? output_name_output
    Boolean? no_fast_q
    Boolean? no_write_events
    String? strand_list
    String? limit
    Int? min_len
    Int? max_len
    String? model
    String? jobs
    String? trans
    Boolean? no_fast_decode
    Boolean? no_exc_open_cl
    Boolean? no_list_platforms
    Array[String] platforms
    String path_fast_files
  }
  command <<<
    nanonetcall \
      ~{path_fast_files} \
      ~{if defined(watch) then ("--watch " +  '"' + watch + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{true="--no-event_detect" false="" no_event_detect} \
      ~{if defined(output_name_output) then ("--output " +  '"' + output_name_output + '"') else ""} \
      ~{true="--no-fastq" false="" no_fast_q} \
      ~{true="--no-write_events" false="" no_write_events} \
      ~{if defined(strand_list) then ("--strand_list " +  '"' + strand_list + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max_len " +  '"' + max_len + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(trans) then ("--trans " +  '"' + trans + '"') else ""} \
      ~{true="--no-fast_decode" false="" no_fast_decode} \
      ~{true="--no-exc_opencl" false="" no_exc_open_cl} \
      ~{true="--no-list_platforms" false="" no_list_platforms} \
      ~{if defined(platforms) then ("--platforms " +  '"' + platforms + '"') else ""}
  >>>
  parameter_meta {
    watch: "Switch to watching folder, argument value used as timeout period. (default: None)"
    section: "Section of read for which to produce basecalls, will override that stored in model file. (default: None)"
    no_event_detect: "Perform event detection, else use existing event data (Default: --event_detect) (default: True)"
    output_name_output: "Output name, output will be in fasta format. (default: None)"
    no_fast_q: "Output fastq rather than fasta. (Default: --no-fastq) (default: False)"
    no_write_events: "Write event datasets to .fast5. (Default: --no- write_events) (default: False)"
    strand_list: "List of reads to process. (default: None)"
    limit: "Limit the number of input for processing. (default: None)"
    min_len: "Min. read length (events) to basecall. (default: 500)"
    max_len: "Max. read length (events) to basecall. (default: 15000)"
    model: "Trained ANN. (default: /home/ubuntu/.cache/Python- Eggs/nanonet-2.0.0-py2.7-linux-x86_64.egg- tmp/nanonet/data/default_template.npy)"
    jobs: "No of decoding jobs to run in parallel. (default: 1)"
    trans: "step skip Base transition probabilities (default: None)"
    no_fast_decode: "Use simple, fast decoder with no transition estimates. (Default: --no-fast_decode) (default: False)"
    no_exc_open_cl: "Do not use CPU alongside OpenCL, overrides --jobs. (Default: --no-exc_opencl) (default: False)"
    no_list_platforms: "Output list of available OpenCL GPU platforms. (Default: --no-list_platforms) (default: False)"
    platforms: "List of OpenCL GPU platforms and devices to be used in a format VENDOR:DEVICE:N_Files space separated, i.e. --platforms nvidia:0:1 amd:0:2 amd:1:2. (default: None)"
    path_fast_files: "A path to fast5 files. (default: None)"
  }
}