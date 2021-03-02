version 1.0

task Compare {
  input {
    File? bam
    String? list
    Boolean? in
    Int? size
  }
  command <<<
    Compare \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if (in) then "--in" else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: ": bam file"
    list: ": list of regions (optional)"
    in: ": <string> name of a sequence"
    size: "size of boundaries\\n"
  }
  output {
    File out_stdout = stdout()
  }
}