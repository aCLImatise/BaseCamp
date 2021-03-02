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
      ~{if (_gsc_weighting) then "-w" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    background_gc_content: ": Background GC content"
    _gsc_weighting: ": Do GSC weighting"
    options: ""
    alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}