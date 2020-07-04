version 1.0

task CheckTagBias.pl {
  input {
    Boolean? start
    Boolean? end
    Boolean? gc_start
    Boolean? gc_end
    Boolean? keep
    Boolean? three_p
    String? pos
    Boolean? skip_gc
    Boolean? skip_freq
    File? prefix
    Boolean? mask
    String tag_directory
    String genome
    String? additional
  }
  command <<<
    checkTagBias.pl \
      ~{tag_directory} \
      ~{genome} \
      ~{additional} \
      ~{true="-start" false="" start} \
      ~{true="-end" false="" end} \
      ~{true="-gcstart" false="" gc_start} \
      ~{true="-gcend" false="" gc_end} \
      ~{true="-keep" false="" keep} \
      ~{true="-3p" false="" three_p} \
      ~{if defined(pos) then ("-pos " +  '"' + pos + '"') else ""} \
      ~{true="-skipGC" false="" skip_gc} \
      ~{true="-skipFreq" false="" skip_freq} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{true="-mask" false="" mask}
  >>>
  parameter_meta {
    start: "<#> (offset to start frequency calculation, default=-50)"
    end: "<#> (offset to end frequency calculation, default=200)"
    gc_start: "<#> (offset to start GC% calculation, default=0)"
    gc_end: "<#> (offset to end GC% calculation, default=100)"
    keep: "(do not delete sequence files for each tag position)"
    three_p: "(if tags have lengths, align them at the 3' end)"
    pos: "(only check positive or negative strands)"
    skip_gc: "(skip GC% calculation)"
    skip_freq: "(skip nucleotide frequency calculation)"
    prefix: "(output files will start with prefix name, default: directory name)"
    mask: "(use repeat-masked genome)"
    tag_directory: ""
    genome: ""
    additional: ""
  }
}