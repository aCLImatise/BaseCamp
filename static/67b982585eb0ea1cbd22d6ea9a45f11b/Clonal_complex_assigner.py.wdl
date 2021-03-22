version 1.0

task ClonalComplexAssignerpy {
  input {
    Int? level
    Int? number_connections
    File? resolve
    String output_name
    String e_burst_mst_report
    String st_gnu_vid_report
  }
  command <<<
    Clonal_complex_assigner_py \
      ~{output_name} \
      ~{e_burst_mst_report} \
      ~{st_gnu_vid_report} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(number_connections) then ("--number_connections " +  '"' + number_connections + '"') else ""} \
      ~{if defined(resolve) then ("--resolve " +  '"' + resolve + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.2--0"
  }
  parameter_meta {
    level: "level of locus variant to assign CC (e.g. SLV, DLV)\\n[Default: 2]"
    number_connections: "number of connections to assign CC [Default: 20]"
    resolve: "provide csv file of 3 columns, 1)conflict (Assign_CC\\nor Founder) 2)ST 3)CC\\n"
    output_name: "output name"
    e_burst_mst_report: "eBURST MST csv report"
    st_gnu_vid_report: "ST GNUVID csv report"
  }
  output {
    File out_stdout = stdout()
  }
}