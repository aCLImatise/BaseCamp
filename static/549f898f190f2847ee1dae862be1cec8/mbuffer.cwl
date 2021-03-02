class: CommandLineTool
id: mbuffer.cwl
inputs:
- id: in_use_num_blocks
  doc: ': use <num> blocks for buffer (default: 49633)'
  type: long?
  inputBinding:
    prefix: -b
- id: in_use_blocks_size
  doc: ': use blocks of <size> bytes for processing (default: 4096)'
  type: long?
  inputBinding:
    prefix: -s
- id: in_memory_size_buffer
  doc: ': memory <size> of buffer in b,k,M,G,% (default: 2% = 193M)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_lock_buffer_unusable
  doc: ': lock buffer in memory (unusable with file based buffers)'
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_use_blocksize_device
  doc: ': use blocksize of device for output'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_assumed_size_default
  doc: ': assumed output device size (default: infinite/auto-detect)'
  type: long?
  inputBinding:
    prefix: -D
- id: in_start_writing_filled
  doc: ': start writing after buffer has been filled more than <num>%'
  type: long?
  inputBinding:
    prefix: -P
- id: in_start_reading_filled
  doc: ': start reading after buffer has been filled less than <num>%'
  type: long?
  inputBinding:
    prefix: -p
- id: in_use_file_input
  doc: ': use <file> for input'
  type: File?
  inputBinding:
    prefix: -i
- id: in_use_file_output
  doc: ': use <file> for output (this option can be passed MULTIPLE times)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_append
  doc: ': append to output file (must be passed before -o)'
  type: File?
  inputBinding:
    prefix: --append
- id: in_truncate
  doc: ': truncate next file (must be passed before -o)'
  type: boolean?
  inputBinding:
    prefix: --truncate
- id: in_output_data_host
  doc: ':<p> : output data to host <h> and port <p> (MUTLIPLE outputs supported)'
  type: string?
  inputBinding:
    prefix: -O
- id: in_num_volumes_input
  doc: ": <num> volumes for input, '0' to prompt interactively"
  type: long?
  inputBinding:
    prefix: -n
- id: in_use_memory_mapped
  doc: ': use memory mapped temporary file (for huge buffer)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_t_uses_file
  doc: ': as -t but uses <file> as buffer'
  type: File?
  inputBinding:
    prefix: -T
- id: in_use_file_logging
  doc: ': use <file> for logging messages'
  type: File?
  inputBinding:
    prefix: -l
- id: in_pause_num_milliseconds
  doc: ': pause <num> milliseconds after each write'
  type: long?
  inputBinding:
    prefix: -u
- id: in_limit_read_rate
  doc: ': limit read rate to <rate> B/s, where <rate> can be given in b,k,M,G'
  type: string?
  inputBinding:
    prefix: -r
- id: in_same_r_writing
  doc: ': same as -r for writing; use eiter one, if your tape is too fast'
  type: string?
  inputBinding:
    prefix: -R
- id: in_overwrite_existing_files
  doc: ': overwrite existing files'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_autoloader_needs_seconds
  doc: ': autoloader which needs <time> seconds to reload'
  type: string?
  inputBinding:
    prefix: -a
- id: in_issue_command_request
  doc: ': issue command <cmd> to request new volume'
  type: string?
  inputBinding:
    prefix: -A
- id: in_set_verbose_level
  doc: ': set verbose level to <level> (valid values are 0..6)'
  type: double?
  inputBinding:
    prefix: -v
- id: in_quiet_display_status
  doc: ': quiet - do not display the status on stderr'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_quiet_log_status
  doc: ': quiet - do not log the status'
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_write_synchronous_data
  doc: ': write with synchronous data integrity support'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_stop_processing_kind
  doc: ': stop processing on any kind of error'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_direct
  doc: ': open input and output with O_DIRECT'
  type: boolean?
  inputBinding:
    prefix: --direct
- id: in_four
  doc: ': force use of IPv4'
  type: boolean?
  inputBinding:
    prefix: '-4'
- id: in_six
  doc: ': force use of IPv6'
  type: boolean?
  inputBinding:
    prefix: '-6'
- id: in_use_ipv_ipv
  doc: ': use IPv4 or IPv6'
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_tcp_buffer
  doc: ': size for TCP buffer'
  type: boolean?
  inputBinding:
    prefix: --tcpbuffer
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_use_file_output
  doc: ': use <file> for output (this option can be passed MULTIPLE times)'
  type: File?
  outputBinding:
    glob: $(inputs.in_use_file_output)
- id: out_append
  doc: ': append to output file (must be passed before -o)'
  type: File?
  outputBinding:
    glob: $(inputs.in_append)
hints: []
cwlVersion: v1.1
baseCommand:
- mbuffer
