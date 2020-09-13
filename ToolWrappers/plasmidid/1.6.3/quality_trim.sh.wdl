version 1.0

task QualityTrimsh {
  input {
    Int? one
    Int? two
    Directory? where_trimmomatic_installed
    Int? to_remove_default
    Directory? directory_optional
    File? name
    Int? length_trimmed_reads
    String? name_mandatory
    String? name_optional_unset
    Int? memmory_gb_default
    Int? _default
    String? v
    String? usage_message
  }
  command <<<
    quality_trim_sh \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(where_trimmomatic_installed) then ("-d " +  '"' + where_trimmomatic_installed + '"') else ""} \
      ~{if defined(to_remove_default) then ("-a " +  '"' + to_remove_default + '"') else ""} \
      ~{if defined(directory_optional) then ("-o " +  '"' + directory_optional + '"') else ""} \
      ~{if defined(name) then ("-f " +  '"' + name + '"') else ""} \
      ~{if defined(length_trimmed_reads) then ("-l " +  '"' + length_trimmed_reads + '"') else ""} \
      ~{if defined(name_mandatory) then ("-s " +  '"' + name_mandatory + '"') else ""} \
      ~{if defined(name_optional_unset) then ("-g " +  '"' + name_optional_unset + '"') else ""} \
      ~{if defined(memmory_gb_default) then ("-M " +  '"' + memmory_gb_default + '"') else ""} \
      ~{if defined(_default) then ("-T " +  '"' + _default + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    one: "file (mandatory)"
    two: "file (mandatory)"
    where_trimmomatic_installed: "where trimmomatic is installed, default: /opt/Trimmomatic/"
    to_remove_default: "to remove, default: TruSeq3-PE.fa"
    directory_optional: "directory (optional)"
    name: "name"
    length_trimmed_reads: "length of trimmed reads (default 40)"
    name_mandatory: "name (mandatory)"
    name_optional_unset: "name (optional). If unset, samples will be gathered in NO_GROUP group"
    memmory_gb_default: "memmory (Gb), default 8"
    _default: ", default 1"
    v: ""
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}