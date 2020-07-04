version 1.0

task SortBedTypical {
  input {
    String? tmpdir
    String? unique
    String? duplicates
    Boolean? check_sort
    String? max_mem
    String sort_bed
    File file_one_dot_bed
    File file_two_dot_bed
  }
  command <<<
    sort-bed-typical \
      ~{sort_bed} \
      ~{file_one_dot_bed} \
      ~{file_two_dot_bed} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(unique) then ("--unique " +  '"' + unique + '"') else ""} \
      ~{if defined(duplicates) then ("--duplicates " +  '"' + duplicates + '"') else ""} \
      ~{true="--check-sort" false="" check_sort} \
      ~{if defined(max_mem) then ("--max-mem " +  '"' + max_mem + '"') else ""}
  >>>
  parameter_meta {
    tmpdir: "useful only with --max-mem."
    unique: "be used to print only unique BED elements (similar to 'sort -u'). Cannot be used with --duplicates."
    duplicates: "be used to print only duplicated or repeated elements (similar to 'uniq -d'). Cannot be used with --unique."
    check_sort: ""
    max_mem: ""
    sort_bed: ""
    file_one_dot_bed: ""
    file_two_dot_bed: ""
  }
}