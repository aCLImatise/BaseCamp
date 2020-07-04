version 1.0

task Df {
  input {
    String? local
    String? no_sync
    Boolean? use_output_format_defined
    Boolean? portability
    Boolean? sync
    Boolean? total
    String? type
    Boolean? print_type
    String? exclude_type
    Boolean? ignored
    String? option
  }
  command <<<
    df \
      ~{option} \
      ~{if defined(local) then ("--local " +  '"' + local + '"') else ""} \
      ~{if defined(no_sync) then ("--no-sync " +  '"' + no_sync + '"') else ""} \
      ~{true="--output" false="" use_output_format_defined} \
      ~{true="--portability" false="" portability} \
      ~{true="--sync" false="" sync} \
      ~{true="--total" false="" total} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{true="--print-type" false="" print_type} \
      ~{if defined(exclude_type) then ("--exclude-type " +  '"' + exclude_type + '"') else ""} \
      ~{true="-v" false="" ignored}
  >>>
  parameter_meta {
    local: "listing to local file systems"
    no_sync: "not invoke sync before getting usage info (default)"
    use_output_format_defined: "[=FIELD_LIST]  use the output format defined by FIELD_LIST, or print all fields if FIELD_LIST is omitted."
    portability: "use the POSIX output format"
    sync: "invoke sync before getting usage info"
    total: "elide all entries insignificant to available space, and produce a grand total"
    type: "limit listing to file systems of type TYPE"
    print_type: "print file system type"
    exclude_type: "limit listing to file systems not of type TYPE"
    ignored: "(ignored)"
    option: ""
  }
}