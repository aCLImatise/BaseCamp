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
    Boolean? same_t_select_named
    Boolean? select_octal_bytes
    Boolean? same_t_select_characters
    Boolean? same_t_u_select
    Boolean? same_t_ff
    Boolean? same_t_select_decimal_ints
    Boolean? same_t_dl
    Boolean? same_octal_byte
    Boolean? same_t_select_decimal_byte
    Boolean? same_t_select_hexadecimal
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
      ~{if (same_t_select_named) then "-a" else ""} \
      ~{if (select_octal_bytes) then "-b" else ""} \
      ~{if (same_t_select_characters) then "-c" else ""} \
      ~{if (same_t_u_select) then "-d" else ""} \
      ~{if (same_t_ff) then "-f" else ""} \
      ~{if (same_t_select_decimal_ints) then "-i" else ""} \
      ~{if (same_t_dl) then "-l" else ""} \
      ~{if (same_octal_byte) then "-o" else ""} \
      ~{if (same_t_select_decimal_byte) then "-s" else ""} \
      ~{if (same_t_select_hexadecimal) then "-x" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    same_t_select_named: "same as -t a,  select named characters, ignoring high-order bit"
    select_octal_bytes: "same as -t o1, select octal bytes"
    same_t_select_characters: "same as -t c,  select printable characters or backslash escapes"
    same_t_u_select: "same as -t u2, select unsigned decimal 2-byte units"
    same_t_ff: "same as -t fF, select floats"
    same_t_select_decimal_ints: "same as -t dI, select decimal ints"
    same_t_dl: "same as -t dL, select decimal longs"
    same_octal_byte: "same as -t o2, select octal 2-byte units"
    same_t_select_decimal_byte: "same as -t d2, select decimal 2-byte units"
    same_t_select_hexadecimal: "same as -t x2, select hexadecimal 2-byte units"
  }
  output {
    File out_stdout = stdout()
  }
}