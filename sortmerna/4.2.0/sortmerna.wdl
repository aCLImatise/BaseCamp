version 1.0

task Sortmerna {
  input {
    Boolean? cmd
    Boolean? int_optional_processing
    File? ref
    String? reads
  }
  command <<<
    sortmerna \
      ~{true="--cmd" false="" cmd} \
      ~{true="--task" false="" int_optional_processing} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""}
  >>>
  parameter_meta {
    cmd: "BOOL        Optional  Launch an interactive session (command prompt)          False"
    int_optional_processing: "INT         Optional  Processing Task:                                        4 0 - align. Only perform alignment 1 - post-processing (log writing) 2 - generate reports 3 - align and post-process 4 - all"
    ref: ""
    reads: ""
  }
}