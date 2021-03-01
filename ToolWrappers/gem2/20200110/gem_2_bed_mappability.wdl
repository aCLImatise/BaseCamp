version 1.0

task Gem2bedMappability {
  input {
    File? index
    File? defaultstdin
    String? var_output
  }
  command <<<
    gem_2_bed mappability \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(defaultstdin) then ("--input " +  '"' + defaultstdin + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  parameter_meta {
    index: "(mandatory)"
    defaultstdin: "(default=stdin)"
    var_output: "(mandatory)"
  }
  output {
    File out_stdout = stdout()
  }
}