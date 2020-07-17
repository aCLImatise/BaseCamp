version 1.0

task Od {
  input {
    String? address_radix
    Boolean? endian
    String? skip_bytes
    String? read_bytes
    String? strings
    String? format
    Boolean? output_duplicates
    Boolean? output_bytes_bytes
    Boolean? same_t_select_named
    Boolean? same_t_select_octal
    Boolean? same_backslash_escapes
    Boolean? same_select_unsigned
    String? t_ff_select
    String? t_di_select
    String? t_dl_select
    String? t_select_octal
    String? t_d_select
    String? t_select_hexadecimal
    String? option
  }
  command <<<
    od \
      ~{option} \
      ~{if defined(address_radix) then ("--address-radix " +  '"' + address_radix + '"') else ""} \
      ~{true="--endian" false="" endian} \
      ~{if defined(skip_bytes) then ("--skip-bytes " +  '"' + skip_bytes + '"') else ""} \
      ~{if defined(read_bytes) then ("--read-bytes " +  '"' + read_bytes + '"') else ""} \
      ~{if defined(strings) then ("--strings " +  '"' + strings + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--output-duplicates" false="" output_duplicates} \
      ~{true="-w" false="" output_bytes_bytes} \
      ~{true="-a" false="" same_t_select_named} \
      ~{true="-b" false="" same_t_select_octal} \
      ~{true="-c" false="" same_backslash_escapes} \
      ~{true="-d" false="" same_select_unsigned} \
      ~{if defined(t_ff_select) then ("-f " +  '"' + t_ff_select + '"') else ""} \
      ~{if defined(t_di_select) then ("-i " +  '"' + t_di_select + '"') else ""} \
      ~{if defined(t_dl_select) then ("-l " +  '"' + t_dl_select + '"') else ""} \
      ~{if defined(t_select_octal) then ("-o " +  '"' + t_select_octal + '"') else ""} \
      ~{if defined(t_d_select) then ("-s " +  '"' + t_d_select + '"') else ""} \
      ~{if defined(t_select_hexadecimal) then ("-x " +  '"' + t_select_hexadecimal + '"') else ""}
  >>>
  parameter_meta {
    address_radix: "output format for file offsets; RADIX is one of [doxn], for Decimal, Octal, Hex or None"
    endian: "={big|little}   swap input bytes according the specified order"
    skip_bytes: "skip BYTES input bytes first"
    read_bytes: "limit dump to BYTES input bytes"
    strings: "[=BYTES]  output strings of at least BYTES graphic chars; 3 is implied when BYTES is not specified"
    format: "select output format or formats"
    output_duplicates: "do not use * to mark line suppression"
    output_bytes_bytes: "[BYTES], --width[=BYTES]  output BYTES bytes per output line; 32 is implied when BYTES is not specified --traditional           accept arguments in third form above --help display this help and exit --version output version information and exit"
    same_t_select_named: "same as -t a,  select named characters, ignoring high-order bit"
    same_t_select_octal: "same as -t o1, select octal bytes"
    same_backslash_escapes: "same as -t c,  select printable characters or backslash escapes"
    same_select_unsigned: "same as -t u2, select unsigned decimal 2-byte units"
    t_ff_select: "as -t fF, select floats"
    t_di_select: "as -t dI, select decimal ints"
    t_dl_select: "as -t dL, select decimal longs"
    t_select_octal: "as -t o2, select octal 2-byte units"
    t_d_select: "as -t d2, select decimal 2-byte units"
    t_select_hexadecimal: "as -t x2, select hexadecimal 2-byte units"
    option: ""
  }
}