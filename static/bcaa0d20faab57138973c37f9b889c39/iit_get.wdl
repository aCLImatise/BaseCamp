version 1.0

task IitGet {
  input {
    String? field
    Boolean? interpret_query_queries_is
    Boolean? coords
    Boolean? an_not_only
    Boolean? sort
    Boolean? unsigned
    Int? flanking
    String? low_val
    String? high_val
    Int? center
    Boolean? center_uc
    Boolean? run_length
    Boolean? tally
    Boolean? zeroes
    Boolean? stats
    String start
    String start_dot_do_tend
    String options
  }
  command <<<
    iit_get \
      ~{start} \
      ~{start_dot_do_tend} \
      ~{options} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if (interpret_query_queries_is) then "--label" else ""} \
      ~{if (coords) then "--coords" else ""} \
      ~{if (an_not_only) then "--annotonly" else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (unsigned) then "--unsigned" else ""} \
      ~{if defined(flanking) then ("--flanking " +  '"' + flanking + '"') else ""} \
      ~{if defined(low_val) then ("--lowval " +  '"' + low_val + '"') else ""} \
      ~{if defined(high_val) then ("--highval " +  '"' + high_val + '"') else ""} \
      ~{if defined(center) then ("--center " +  '"' + center + '"') else ""} \
      ~{if (center_uc) then "--centeruc" else ""} \
      ~{if (run_length) then "--runlength" else ""} \
      ~{if (tally) then "--tally" else ""} \
      ~{if (zeroes) then "--zeroes" else ""} \
      ~{if (stats) then "--stats" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    field: "Show given field part of the annotation"
    interpret_query_queries_is: "Interpret query or queries as a label, even if it is numeric"
    coords: "Interpret query or queries as coords"
    an_not_only: "Show annotation lines only (no headers)"
    sort: "Sort results by coordinates"
    unsigned: "Print all intervals as low..high, even those entered as reverse (high < low)"
    flanking: "Show flanking segments on left and right"
    low_val: "Low bound on a values IIT (default -Inf)"
    high_val: "High bound on a values IIT (default +Inf)"
    center: "Align reads so given position is centered at given column"
    center_uc: "Report only reads with upper-case letter at given position"
    run_length: "Report runlength IIT file in tally format"
    tally: "Report tally IIT file in tally format"
    zeroes: "Include zeroes in tally format"
    stats: "Statistics (count, npositions, mean) of tally format"
    start: "chr:"
    start_dot_do_tend: "start"
    options: "Options"
  }
  output {
    File out_stdout = stdout()
  }
}