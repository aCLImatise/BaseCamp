version 1.0

task Mbuffer {
  input {
    Int? use_num_blocks
    Int? use_blocks_size
    Int? memory_size_buffer
    Boolean? lock_buffer_unusable
    Boolean? use_blocksize_device
    Int? assumed_size_default
    Int? start_writing_filled
    Int? start_reading_filled
    File? use_file_input
    File? use_file_output
    File? append
    Boolean? truncate
    String? output_data_host
    Int? num_volumes_input
    Boolean? use_memory_mapped
    File? t_uses_file
    File? use_file_logging
    Int? pause_num_milliseconds
    String? limit_read_rate
    String? same_r_writing
    Boolean? overwrite_existing_files
    String? autoloader_needs_seconds
    String? issue_command_request
    Float? set_verbose_level
    Boolean? quiet_display_status
    Boolean? quiet_log_status
    Boolean? write_synchronous_data
    Boolean? stop_processing_kind
    Boolean? direct
    Boolean? four
    Boolean? six
    Boolean? use_ipv_ipv
    Boolean? tcp_buffer
  }
  command <<<
    mbuffer \
      ~{if defined(use_num_blocks) then ("-b " +  '"' + use_num_blocks + '"') else ""} \
      ~{if defined(use_blocks_size) then ("-s " +  '"' + use_blocks_size + '"') else ""} \
      ~{if defined(memory_size_buffer) then ("-m " +  '"' + memory_size_buffer + '"') else ""} \
      ~{if (lock_buffer_unusable) then "-L" else ""} \
      ~{if (use_blocksize_device) then "-d" else ""} \
      ~{if defined(assumed_size_default) then ("-D " +  '"' + assumed_size_default + '"') else ""} \
      ~{if defined(start_writing_filled) then ("-P " +  '"' + start_writing_filled + '"') else ""} \
      ~{if defined(start_reading_filled) then ("-p " +  '"' + start_reading_filled + '"') else ""} \
      ~{if defined(use_file_input) then ("-i " +  '"' + use_file_input + '"') else ""} \
      ~{if defined(use_file_output) then ("-o " +  '"' + use_file_output + '"') else ""} \
      ~{if (append) then "--append" else ""} \
      ~{if (truncate) then "--truncate" else ""} \
      ~{if defined(output_data_host) then ("-O " +  '"' + output_data_host + '"') else ""} \
      ~{if defined(num_volumes_input) then ("-n " +  '"' + num_volumes_input + '"') else ""} \
      ~{if (use_memory_mapped) then "-t" else ""} \
      ~{if defined(t_uses_file) then ("-T " +  '"' + t_uses_file + '"') else ""} \
      ~{if defined(use_file_logging) then ("-l " +  '"' + use_file_logging + '"') else ""} \
      ~{if defined(pause_num_milliseconds) then ("-u " +  '"' + pause_num_milliseconds + '"') else ""} \
      ~{if defined(limit_read_rate) then ("-r " +  '"' + limit_read_rate + '"') else ""} \
      ~{if defined(same_r_writing) then ("-R " +  '"' + same_r_writing + '"') else ""} \
      ~{if (overwrite_existing_files) then "-f" else ""} \
      ~{if defined(autoloader_needs_seconds) then ("-a " +  '"' + autoloader_needs_seconds + '"') else ""} \
      ~{if defined(issue_command_request) then ("-A " +  '"' + issue_command_request + '"') else ""} \
      ~{if defined(set_verbose_level) then ("-v " +  '"' + set_verbose_level + '"') else ""} \
      ~{if (quiet_display_status) then "-q" else ""} \
      ~{if (quiet_log_status) then "-Q" else ""} \
      ~{if (write_synchronous_data) then "-c" else ""} \
      ~{if (stop_processing_kind) then "-e" else ""} \
      ~{if (direct) then "--direct" else ""} \
      ~{if (four) then "-4" else ""} \
      ~{if (six) then "-6" else ""} \
      ~{if (use_ipv_ipv) then "-0" else ""} \
      ~{if (tcp_buffer) then "--tcpbuffer" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_num_blocks: ": use <num> blocks for buffer (default: 49633)"
    use_blocks_size: ": use blocks of <size> bytes for processing (default: 4096)"
    memory_size_buffer: ": memory <size> of buffer in b,k,M,G,% (default: 2% = 193M)"
    lock_buffer_unusable: ": lock buffer in memory (unusable with file based buffers)"
    use_blocksize_device: ": use blocksize of device for output"
    assumed_size_default: ": assumed output device size (default: infinite/auto-detect)"
    start_writing_filled: ": start writing after buffer has been filled more than <num>%"
    start_reading_filled: ": start reading after buffer has been filled less than <num>%"
    use_file_input: ": use <file> for input"
    use_file_output: ": use <file> for output (this option can be passed MULTIPLE times)"
    append: ": append to output file (must be passed before -o)"
    truncate: ": truncate next file (must be passed before -o)"
    output_data_host: ":<p> : output data to host <h> and port <p> (MUTLIPLE outputs supported)"
    num_volumes_input: ": <num> volumes for input, '0' to prompt interactively"
    use_memory_mapped: ": use memory mapped temporary file (for huge buffer)"
    t_uses_file: ": as -t but uses <file> as buffer"
    use_file_logging: ": use <file> for logging messages"
    pause_num_milliseconds: ": pause <num> milliseconds after each write"
    limit_read_rate: ": limit read rate to <rate> B/s, where <rate> can be given in b,k,M,G"
    same_r_writing: ": same as -r for writing; use eiter one, if your tape is too fast"
    overwrite_existing_files: ": overwrite existing files"
    autoloader_needs_seconds: ": autoloader which needs <time> seconds to reload"
    issue_command_request: ": issue command <cmd> to request new volume"
    set_verbose_level: ": set verbose level to <level> (valid values are 0..6)"
    quiet_display_status: ": quiet - do not display the status on stderr"
    quiet_log_status: ": quiet - do not log the status"
    write_synchronous_data: ": write with synchronous data integrity support"
    stop_processing_kind: ": stop processing on any kind of error"
    direct: ": open input and output with O_DIRECT"
    four: ": force use of IPv4"
    six: ": force use of IPv6"
    use_ipv_ipv: ": use IPv4 or IPv6"
    tcp_buffer: ": size for TCP buffer"
  }
  output {
    File out_stdout = stdout()
    File out_use_file_output = "${in_use_file_output}"
    File out_append = "${in_append}"
  }
}