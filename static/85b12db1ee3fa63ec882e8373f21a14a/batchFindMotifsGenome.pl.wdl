version 1.0

task BatchFindMotifsGenomepl {
  input {
    Boolean? dist
    Boolean? cpu
    Directory? d
    String? genome
    String? options_dot_dot_dot
    String? tag_directory
    Int? two
  }
  command <<<
    batchFindMotifsGenome_pl \
      ~{genome} \
      ~{options_dot_dot_dot} \
      ~{tag_directory} \
      ~{two} \
      ~{if (dist) then "-dist" else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dist: "<#> (Will only analyze promoter-distal regions ># away from TSS)"
    cpu: "(# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)"
    d: ""
    genome: ""
    options_dot_dot_dot: ""
    tag_directory: ""
    two: ""
  }
  output {
    File out_stdout = stdout()
  }
}