version 1.0

task BowtieMappersh {
  input {
    Directory? i
    Directory? o
    String? to_map_fasta
    String? name
    String? name_optional_unset
    Int? one
    Int? two
    Int? index_bowtiebuild_optional
    String? off_by_default
    Int? of_threads
    String? v
    String? usage_message
  }
  command <<<
    bowtie_mapper_sh \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(to_map_fasta) then ("-d " +  '"' + to_map_fasta + '"') else ""} \
      ~{if defined(name) then ("-s " +  '"' + name + '"') else ""} \
      ~{if defined(name_optional_unset) then ("-g " +  '"' + name_optional_unset + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(index_bowtiebuild_optional) then ("-f " +  '"' + index_bowtiebuild_optional + '"') else ""} \
      ~{if defined(off_by_default) then ("-a " +  '"' + off_by_default + '"') else ""} \
      ~{if defined(of_threads) then ("-T " +  '"' + of_threads + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    i: "directory (optional)"
    o: "directory (optional)"
    to_map_fasta: "to map (.fasta)"
    name: "name"
    name_optional_unset: "name (optional). If unset, samples will be gathered in NO_GROUP group"
    one: "corresponding to paired-end R1"
    two: "corresponding to paired-end R2"
    index_bowtiebuild_optional: "index for bowtie_build (optional). Default value 1. for quicker indexing use higher number"
    off_by_default: "(off by default)"
    of_threads: "of threads"
    v: ""
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}