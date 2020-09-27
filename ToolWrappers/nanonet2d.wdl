version 1.0

task Nanonet2d {
  input {
    Boolean? no_fast_q
    Directory? watch
    String? section
    Boolean? no_event_detect
    Boolean? no_write_events
    String? strand_list
    Int? limit
    Int? min_len
    Int? max_len
    Float? template_model
    Float? complement_model
    Int? jobs
    Boolean? no_open_cl_two_d
    String? trans
    Boolean? no_fast_decode
    String path_default_none
    String output_prefix
  }
  command <<<
    nanonet2d \
      ~{path_default_none} \
      ~{output_prefix} \
      ~{if (no_fast_q) then "--no-fastq" else ""} \
      ~{if defined(watch) then ("--watch " +  '"' + watch + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if (no_event_detect) then "--no-event_detect" else ""} \
      ~{if (no_write_events) then "--no-write_events" else ""} \
      ~{if defined(strand_list) then ("--strand_list " +  '"' + strand_list + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max_len " +  '"' + max_len + '"') else ""} \
      ~{if defined(template_model) then ("--template_model " +  '"' + template_model + '"') else ""} \
      ~{if defined(complement_model) then ("--complement_model " +  '"' + complement_model + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (no_open_cl_two_d) then "--no-opencl_2d" else ""} \
      ~{if defined(trans) then ("--trans " +  '"' + trans + '"') else ""} \
      ~{if (no_fast_decode) then "--no-fast_decode" else ""}
  >>>
  parameter_meta {
    no_fast_q: "Output fastq rather than fasta. (Default: --no-fastq)\\n(default: False)"
    watch: "Switch to watching folder, argument value used as\\ntimeout period. (default: None)"
    section: "Section of read for which to produce basecalls, will\\noverride that stored in model file. (default: None)"
    no_event_detect: "Perform event detection, else use existing event data\\n(Default: --event_detect) (default: True)"
    no_write_events: "Write event datasets to .fast5. (Default: --no-\\nwrite_events) (default: False)"
    strand_list: "List of reads to process. (default: None)"
    limit: "Limit the number of input for processing. (default:\\nNone)"
    min_len: "Min. read length (events) to basecall. (default: 500)"
    max_len: "Max. read length (events) to basecall. (default:\\n15000)"
    template_model: "Trained ANN. (default: /root/.cache/Python-\\nEggs/nanonet-2.0.0-py2.7-linux-x86_64.egg-\\ntmp/nanonet/data/default_template.npy)"
    complement_model: "Trained ANN. (default: /root/.cache/Python-\\nEggs/nanonet-2.0.0-py2.7-linux-x86_64.egg-\\ntmp/nanonet/data/default_complement.npy)"
    jobs: "No of decoding jobs to run in parallel. (default: 1)"
    no_open_cl_two_d: "Use OpenCL for 2D calls. (Default: --no-opencl_2d)\\n(default: False)"
    trans: "step skip\\nBase transition probabilities (default: None)"
    no_fast_decode: "Use simple, fast decoder with no transition estimates.\\n(Default: --no-fast_decode) (default: False)\\n"
    path_default_none: "A path to fast5 files. (default: None)"
    output_prefix: "Output prefix, output will be in fasta format."
  }
  output {
    File out_stdout = stdout()
  }
}