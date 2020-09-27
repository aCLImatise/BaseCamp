version 1.0

task DiffBamspl {
  input {
    Boolean? bam_a
    Boolean? bam_b
    Boolean? ref
    Boolean? count_flag_differences
    Boolean? skip_z
    Boolean? man
    Boolean? m
    Boolean? var_7
    Boolean? s
    Boolean? c
    Boolean? r
    Boolean? b
    Boolean? var_12
    Int one_dot
    Int two_dot
    String brief
    String var_16
    String don
    String full
    String var_19
    String other
    String required
    String run
    String var_23
    String you
    String input_slash_output
    String processing
    String relevant
    String all
    String var_29
    String first
    String flag
    String for
    String var_33
    String information
    String is
    String parameters
    String paths_dot
    String second
    String with
    String bam_vertical_line_cram
    String cram
    String var_42
    String able
    String being
    Int number
    String rare
    String reads
    String and
    String are
    String var_as
    String incorporated
    String program
    String that
    String bam
    String compare
    String in
    String into
    String order
    String works
    String var_60
    String around
    String files
    String of
    String var_64
    String var_65
    String at_sq
    String can
    String header
    String var_69
    String be
    String by
    String such
    String vs
    String compared
    String var_75
    String only
    String via
    Int md_five
    String due
    String to
  }
  command <<<
    diff_bams_pl \
      ~{one_dot} \
      ~{two_dot} \
      ~{brief} \
      ~{var_16} \
      ~{don} \
      ~{full} \
      ~{var_19} \
      ~{other} \
      ~{required} \
      ~{run} \
      ~{var_23} \
      ~{you} \
      ~{input_slash_output} \
      ~{processing} \
      ~{relevant} \
      ~{all} \
      ~{var_29} \
      ~{first} \
      ~{flag} \
      ~{for} \
      ~{var_33} \
      ~{information} \
      ~{is} \
      ~{parameters} \
      ~{paths_dot} \
      ~{second} \
      ~{with} \
      ~{bam_vertical_line_cram} \
      ~{cram} \
      ~{var_42} \
      ~{able} \
      ~{being} \
      ~{number} \
      ~{rare} \
      ~{reads} \
      ~{and} \
      ~{are} \
      ~{var_as} \
      ~{incorporated} \
      ~{program} \
      ~{that} \
      ~{bam} \
      ~{compare} \
      ~{in} \
      ~{into} \
      ~{order} \
      ~{works} \
      ~{var_60} \
      ~{around} \
      ~{files} \
      ~{of} \
      ~{var_64} \
      ~{var_65} \
      ~{at_sq} \
      ~{can} \
      ~{header} \
      ~{var_69} \
      ~{be} \
      ~{by} \
      ~{such} \
      ~{vs} \
      ~{compared} \
      ~{var_75} \
      ~{only} \
      ~{via} \
      ~{md_five} \
      ~{due} \
      ~{to} \
      ~{if (bam_a) then "-bam_a" else ""} \
      ~{if (bam_b) then "-bam_b" else ""} \
      ~{if (ref) then "-ref" else ""} \
      ~{if (count_flag_differences) then "-count" else ""} \
      ~{if (skip_z) then "-skipz" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (m) then "-m" else ""} \
      ~{if (var_7) then "-help" else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if (c) then "-c" else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if (b) then "-b" else ""} \
      ~{if (var_12) then "-a" else ""}
  >>>
  parameter_meta {
    bam_a: "-a    The first BAM|CRAM file."
    bam_b: "-b    The second BAM|CRAM file."
    ref: "-r    Required for CRAM, genome.fa with co-located fai."
    count_flag_differences: "-c    Count flag differences"
    skip_z: "-s    Don't include reads with MAPQ=0 in comparison"
    man: "-m    Full documentation."
    m: ""
    var_7: ""
    s: ""
    c: ""
    r: ""
    b: ""
    var_12: ""
    one_dot: ""
    two_dot: ""
    brief: ""
    var_16: ""
    don: ""
    full: ""
    var_19: ""
    other: ""
    required: ""
    run: ""
    var_23: ""
    you: ""
    input_slash_output: ""
    processing: ""
    relevant: ""
    all: ""
    var_29: ""
    first: ""
    flag: ""
    for: ""
    var_33: ""
    information: ""
    is: ""
    parameters: ""
    paths_dot: ""
    second: ""
    with: ""
    bam_vertical_line_cram: ""
    cram: ""
    var_42: ""
    able: ""
    being: ""
    number: ""
    rare: ""
    reads: ""
    and: ""
    are: ""
    var_as: ""
    incorporated: ""
    program: ""
    that: ""
    bam: ""
    compare: ""
    in: ""
    into: ""
    order: ""
    works: ""
    var_60: ""
    around: ""
    files: ""
    of: ""
    var_64: ""
    var_65: ""
    at_sq: ""
    can: ""
    header: ""
    var_69: ""
    be: ""
    by: ""
    such: ""
    vs: ""
    compared: ""
    var_75: ""
    only: ""
    via: ""
    md_five: ""
    due: ""
    to: ""
  }
  output {
    File out_stdout = stdout()
  }
}