version 1.0

task PlasmidhawkAnnotatePlasmidmetadata {
  input {
    String? o
    String plasmid_hawk
    String annotate
    String frag_metadata
    String plasmid_metadata
  }
  command <<<
    plasmidhawk annotate plasmid_metadata \
      ~{plasmid_hawk} \
      ~{annotate} \
      ~{frag_metadata} \
      ~{plasmid_metadata} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidhawk:1.0.2--0"
  }
  parameter_meta {
    o: ""
    plasmid_hawk: ""
    annotate: ""
    frag_metadata: ""
    plasmid_metadata: ""
  }
  output {
    File out_stdout = stdout()
  }
}