version 1.0

task BedtkIsec {
  input {
    File? list_specify_order
    String a_dot_bed
    String b_dot_bed
  }
  command <<<
    bedtk isec \
      ~{a_dot_bed} \
      ~{b_dot_bed} \
      ~{if defined(list_specify_order) then ("-s " +  '"' + list_specify_order + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtk:0.0.r25.dirty--hed695b0_0"
  }
  parameter_meta {
    list_specify_order: "list of contig IDs to specify the output order []"
    a_dot_bed: ""
    b_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}