version 1.0

task PreparseGenome.pl {
  input {
    Boolean? window
    Boolean? max
    Boolean? min_inc
    Directory? pre_parsed_dir
    Boolean? size
    String genome
  }
  command <<<
    preparseGenome.pl \
      ~{genome} \
      ~{true="-window" false="" window} \
      ~{true="-max" false="" max} \
      ~{true="-minInc" false="" min_inc} \
      ~{if defined(pre_parsed_dir) then ("-preparsedDir " +  '"' + pre_parsed_dir + '"') else ""} \
      ~{true="-size" false="" size}
  >>>
  parameter_meta {
    window: "<#> (size of window around ref positions to prepare, default=50000)"
    max: "<#> (maximum number of preparesed fragments to create, default=2e6)"
    min_inc: "<#> (minimum size of region near ref pos to include, default=1000)"
    pre_parsed_dir: "(alternative directory to place the preparsed output files)"
    size: ""
    genome: ""
  }
}