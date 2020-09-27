version 1.0

task Od {
  input {
    Float? address_radix
    Boolean? endian
    String? skip_bytes
    String? read_bytes
    Int? strings
    String? format
    Boolean? output_duplicates
    Boolean? output_bytes_bytes
    Boolean? traditional
    Boolean? same_t_select
    Boolean? select_octal_bytes
    Boolean? same_t_c
    Boolean? same_t_u
    Boolean? same_ff_select
    Boolean? same_t_di
    Boolean? same_t_dl
    Boolean? same_octal_byte
    Boolean? same_t_d
    Boolean? same_t_x
  }
  command <<<
    od \
      ~{if defined(address_radix) then ("--address-radix " +  '"' + address_radix + '"') else ""} \
      ~{if (endian) then "--endian" else ""} \
      ~{if defined(skip_bytes) then ("--skip-bytes " +  '"' + skip_bytes + '"') else ""} \
      ~{if defined(read_bytes) then ("--read-bytes " +  '"' + read_bytes + '"') else ""} \
      ~{if defined(strings) then ("--strings " +  '"' + strings + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (output_duplicates) then "--output-duplicates" else ""} \
      ~{if (output_bytes_bytes) then "-w" else ""} \
      ~{if (traditional) then "--traditional" else ""} \
      ~{if (same_t_select) then "-a" else ""} \
      ~{if (select_octal_bytes) then "-b" else ""} \
      ~{if (same_t_c) then "-c" else ""} \
      ~{if (same_t_u) then "-d" else ""} \
      ~{if (same_ff_select) then "-f" else ""} \
      ~{if (same_t_di) then "-i" else ""} \
      ~{if (same_t_dl) then "-l" else ""} \
      ~{if (same_octal_byte) then "-o" else ""} \
      ~{if (same_t_d) then "-s" else ""} \
      ~{if (same_t_x) then "-x" else ""}
  >>>
  parameter_meta {
    address_radix: "output format for file offsets; RADIX is one\\nof [doxn], for Decimal, Octal, Hex or None"
    endian: "={big|little}   swap input bytes according the specified order"
    skip_bytes: "skip BYTES input bytes first"
    read_bytes: "limit dump to BYTES input bytes"
    strings: "[=BYTES]  output strings of at least BYTES graphic chars;\\n3 is implied when BYTES is not specified"
    format: "select output format or formats"
    output_duplicates: "do not use * to mark line suppression"
    output_bytes_bytes: "[BYTES], --width[=BYTES]  output BYTES bytes per output line;\\n32 is implied when BYTES is not specified"
    traditional: "accept arguments in third form above"
    same_t_select: "same as -t a,  select named characters, ignoring high-order bit"
    select_octal_bytes: "same as -t o1, select octal bytes"
    same_t_c: "same as -t c,  select printable characters or backslash escapes"
    same_t_u: "same as -t u2, select unsigned decimal 2-byte units"
    same_ff_select: "same as -t fF, select floats"
    same_t_di: "same as -t dI, select decimal ints"
    same_t_dl: "same as -t dL, select decimal longs"
    same_octal_byte: "same as -t o2, select octal 2-byte units"
    same_t_d: "same as -t d2, select decimal 2-byte units"
    same_t_x: "same as -t x2, select hexadecimal 2-byte units"
  }
  output {
    File out_stdout = stdout()
  }
}