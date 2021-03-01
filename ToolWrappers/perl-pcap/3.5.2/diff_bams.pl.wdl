version 1.0

task DiffBamspl {
  input {
    Boolean? bam_a
    Boolean? bam_b
    Boolean? ref
    Boolean? count_flag_differences
    Boolean? skip_z
    Boolean? man
    Boolean? var_6
    Int one_dot
    Int two_dot
    String brief
    String var_10
    String don
    String full
    String var_13
    String other
    String required
    String run
    String var_17
    String you
    String var_input
    String processing
    String relevant
    String all
    String var_23
    String first
    String flag
    String for
    String var_27
    String information
    String is
    String parameters
    String second
    String with
    String bam_vertical_line_cram
    String cram
    String able
    String being
    Int number
    String rare
    String reads
    String and
    String are
    String var_as
    String incorporated
    String that
    String bam
    String compare
    String in
    String into
    String order
    String a
    String files
    String of
    String var_53
    String var_54
    String at_sq
    String can
    String header
    String be
    String such
    String vs
    String compared
    String var_62
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
      ~{var_10} \
      ~{don} \
      ~{full} \
      ~{var_13} \
      ~{other} \
      ~{required} \
      ~{run} \
      ~{var_17} \
      ~{you} \
      ~{var_input} \
      ~{processing} \
      ~{relevant} \
      ~{all} \
      ~{var_23} \
      ~{first} \
      ~{flag} \
      ~{for} \
      ~{var_27} \
      ~{information} \
      ~{is} \
      ~{parameters} \
      ~{second} \
      ~{with} \
      ~{bam_vertical_line_cram} \
      ~{cram} \
      ~{able} \
      ~{being} \
      ~{number} \
      ~{rare} \
      ~{reads} \
      ~{and} \
      ~{are} \
      ~{var_as} \
      ~{incorporated} \
      ~{that} \
      ~{bam} \
      ~{compare} \
      ~{in} \
      ~{into} \
      ~{order} \
      ~{a} \
      ~{files} \
      ~{of} \
      ~{var_53} \
      ~{var_54} \
      ~{at_sq} \
      ~{can} \
      ~{header} \
      ~{be} \
      ~{such} \
      ~{vs} \
      ~{compared} \
      ~{var_62} \
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
      ~{if (var_6) then "-help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_a: "The first BAM|CRAM file."
    bam_b: "The second BAM|CRAM file."
    ref: "Required for CRAM, genome.fa with co-located fai."
    count_flag_differences: "Count flag differences"
    skip_z: "Don't include reads with MAPQ=0 in comparison"
    man: "Full documentation."
    var_6: ""
    one_dot: ""
    two_dot: ""
    brief: ""
    var_10: ""
    don: ""
    full: ""
    var_13: ""
    other: ""
    required: ""
    run: ""
    var_17: ""
    you: ""
    var_input: ""
    processing: ""
    relevant: ""
    all: ""
    var_23: ""
    first: ""
    flag: ""
    for: ""
    var_27: ""
    information: ""
    is: ""
    parameters: ""
    second: ""
    with: ""
    bam_vertical_line_cram: ""
    cram: ""
    able: ""
    being: ""
    number: ""
    rare: ""
    reads: ""
    and: ""
    are: ""
    var_as: ""
    incorporated: ""
    that: ""
    bam: ""
    compare: ""
    in: ""
    into: ""
    order: ""
    a: ""
    files: ""
    of: ""
    var_53: ""
    var_54: ""
    at_sq: ""
    can: ""
    header: ""
    be: ""
    such: ""
    vs: ""
    compared: ""
    var_62: ""
    via: ""
    md_five: ""
    due: ""
    to: ""
  }
  output {
    File out_stdout = stdout()
  }
}