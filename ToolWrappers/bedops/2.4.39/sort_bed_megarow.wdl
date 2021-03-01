version 1.0

task Sortbedmegarow {
  input {
    Int? tmpdir
    String? unique
    String? duplicates
    Int? max_mem
    Boolean? check_sort
    String sort_bed
    Int file_one_dot_bed
    Int file_two_dot_bed
  }
  command <<<
    sort_bed_megarow \
      ~{sort_bed} \
      ~{file_one_dot_bed} \
      ~{file_two_dot_bed} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(unique) then ("--unique " +  '"' + unique + '"') else ""} \
      ~{if defined(duplicates) then ("--duplicates " +  '"' + duplicates + '"') else ""} \
      ~{if defined(max_mem) then ("--max-mem " +  '"' + max_mem + '"') else ""} \
      ~{if (check_sort) then "--check-sort" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tmpdir: "useful only with --max-mem."
    unique: "be used to print only unique BED elements (similar to 'sort -u'). Cannot be used with --duplicates."
    duplicates: "be used to print only duplicated or repeated elements (similar to 'uniq -d'). Cannot be used with --unique."
    max_mem: ""
    check_sort: ""
    sort_bed: ""
    file_one_dot_bed: ""
    file_two_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}