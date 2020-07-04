version 1.0

task Nanonet2d {
  input {
    Boolean? no_fast_q
    String? watch
    String? section
    Boolean? no_event_detect
    Boolean? no_write_events
    String? strand_list
    String? limit
    Int? min_len
    Int? max_len
    String? template_model
    String? complement_model
    String? jobs
    Boolean? no_open_cl_two_d
    String? trans
    Boolean? no_fast_decode
    String path_fast_files
    String output_prefix
  }
  command <<<
    nanonet2d \
      ~{path_fast_files} \
      ~{output_prefix} \
      ~{true="--no-fastq" false="" no_fast_q} \
      ~{if defined(watch) then ("--watch " +  '"' + watch + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{true="--no-event_detect" false="" no_event_detect} \
      ~{true="--no-write_events" false="" no_write_events} \
      ~{if defined(strand_list) then ("--strand_list " +  '"' + strand_list + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max_len " +  '"' + max_len + '"') else ""} \
      ~{if defined(template_model) then ("--template_model " +  '"' + template_model + '"') else ""} \
      ~{if defined(complement_model) then ("--complement_model " +  '"' + complement_model + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{true="--no-opencl_2d" false="" no_open_cl_two_d} \
      ~{if defined(trans) then ("--trans " +  '"' + trans + '"') else ""} \
      ~{true="--no-fast_decode" false="" no_fast_decode}
  >>>
  parameter_meta {
    no_fast_q: "Output fastq rather than fasta. (Default: --no-fastq) (default: False)"
    watch: "Switch to watching folder, argument value used as timeout period. (default: None)"
    section: "Section of read for which to produce basecalls, will override that stored in model file. (default: None)"
    no_event_detect: "Perform event detection, else use existing event data (Default: --event_detect) (default: True)"
    no_write_events: "Write event datasets to .fast5. (Default: --no- write_events) (default: False)"
    strand_list: "List of reads to process. (default: None)"
    limit: "Limit the number of input for processing. (default: None)"
    min_len: "Min. read length (events) to basecall. (default: 500)"
    max_len: "Max. read length (events) to basecall. (default: 15000)"
    template_model: "Trained ANN. (default: /home/ubuntu/.cache/Python- Eggs/nanonet-2.0.0-py2.7-linux-x86_64.egg- tmp/nanonet/data/default_template.npy)"
    complement_model: "Trained ANN. (default: /home/ubuntu/.cache/Python- Eggs/nanonet-2.0.0-py2.7-linux-x86_64.egg- tmp/nanonet/data/default_complement.npy)"
    jobs: "No of decoding jobs to run in parallel. (default: 1)"
    no_open_cl_two_d: "Use OpenCL for 2D calls. (Default: --no-opencl_2d) (default: False)"
    trans: "step skip Base transition probabilities (default: None)"
    no_fast_decode: "Use simple, fast decoder with no transition estimates. (Default: --no-fast_decode) (default: False)"
    path_fast_files: "A path to fast5 files. (default: None)"
    output_prefix: "Output prefix, output will be in fasta format."
  }
}