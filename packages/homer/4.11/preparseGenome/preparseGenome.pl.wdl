version 1.0

task PreparseGenomepl {
  input {
    Boolean? size
    Boolean? mask
    File? ref
    Boolean? window
    Boolean? max
    Boolean? min_inc
    Directory? pre_parsed_dir
    String genome
  }
  command <<<
    preparseGenome_pl \
      ~{genome} \
      ~{if (size) then "-size" else ""} \
      ~{if (mask) then "-mask" else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if (min_inc) then "-minInc" else ""} \
      ~{if defined(pre_parsed_dir) then ("-preparsedDir " +  '"' + pre_parsed_dir + '"') else ""}
  >>>
  parameter_meta {
    size: "<#> (size of fragments to use for preparsing the genome)"
    mask: "(mask repeats - i.e. lower-case bases)"
    ref: "(reference position file, default: [genome].tss)\\nIf no reference file is given or found, random regions will be used\\nTo force the use of random regions, use \\\"-ref random\\\""
    window: "<#> (size of window around ref positions to prepare, default=50000)"
    max: "<#> (maximum number of preparesed fragments to create, default=2e6)"
    min_inc: "<#> (minimum size of region near ref pos to include, default=1000)"
    pre_parsed_dir: "(alternative directory to place the preparsed output files)"
    genome: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_pre_parsed_dir = "${in_pre_parsed_dir}"
  }
}