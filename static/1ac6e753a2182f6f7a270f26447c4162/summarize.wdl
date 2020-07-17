version 1.0

task Summarize {
  input {
    String? background_gc_content
    Boolean? _gsc_weighting
    Boolean? options
    String alignment
  }
  command <<<
    summarize \
      ~{alignment} \
      ~{if defined(background_gc_content) then ("-g " +  '"' + background_gc_content + '"') else ""} \
      ~{true="-w" false="" _gsc_weighting} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    background_gc_content: ": Background GC content "
    _gsc_weighting: ": Do GSC weighting "
    options: ""
    alignment: ""
  }
}