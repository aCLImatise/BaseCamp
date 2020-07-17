version 1.0

task BatchFindMotifsGenome.pl {
  input {
    Boolean? dist
    Boolean? cpu
    String? d
    String? genome
    String? options_dot_dot_dot
    String? tag_directory
    String? two
  }
  command <<<
    batchFindMotifsGenome.pl \
      ~{genome} \
      ~{options_dot_dot_dot} \
      ~{tag_directory} \
      ~{two} \
      ~{true="-dist" false="" dist} \
      ~{true="-cpu" false="" cpu} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    dist: "<#> (Will only analyze promoter-distal regions ># away from TSS)"
    cpu: "(# of concurrent jobs, -p controls CPUs used by each findMotifsGenome.pl instance)"
    d: ""
    genome: ""
    options_dot_dot_dot: ""
    tag_directory: ""
    two: ""
  }
}