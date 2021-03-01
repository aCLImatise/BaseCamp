version 1.0

task BedparseGtf2bedGtf {
  input {
    String? extrafields
    String bed_parse
    Int gtf_two_bed
  }
  command <<<
    bedparse gtf2bed gtf \
      ~{bed_parse} \
      ~{gtf_two_bed} \
      ~{if defined(extrafields) then ("--extraFields " +  '"' + extrafields + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    extrafields: ""
    bed_parse: ""
    gtf_two_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}