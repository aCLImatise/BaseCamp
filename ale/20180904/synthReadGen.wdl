version 1.0

task SynthReadGen {
  input {
    String? id
    String? ld
    String? im
    String? om
    String? is
    String? os
    String? ip
    String? er
    String? nr
    String? rl
    String? rs
    String? ps
    Boolean? outputs_two_files
  }
  command <<<
    synthReadGen \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(ld) then ("-ld " +  '"' + ld + '"') else ""} \
      ~{if defined(im) then ("-im " +  '"' + im + '"') else ""} \
      ~{if defined(om) then ("-om " +  '"' + om + '"') else ""} \
      ~{if defined(is) then ("-is " +  '"' + is + '"') else ""} \
      ~{if defined(os) then ("-os " +  '"' + os + '"') else ""} \
      ~{if defined(ip) then ("-ip " +  '"' + ip + '"') else ""} \
      ~{if defined(er) then ("-er " +  '"' + er + '"') else ""} \
      ~{if defined(nr) then ("-nr " +  '"' + nr + '"') else ""} \
      ~{if defined(rl) then ("-rl " +  '"' + rl + '"') else ""} \
      ~{if defined(rs) then ("-rs " +  '"' + rs + '"') else ""} \
      ~{if defined(ps) then ("-ps " +  '"' + ps + '"') else ""} \
      ~{true="-b" false="" outputs_two_files}
  >>>
  parameter_meta {
    id: ": set distribution used for insert length [1 = normal], 2 = poisson"
    ld: ": set distribution used for read length [1 = normal], 2 = poisson"
    im: ": inward insert length mean [200.0]"
    om: ": outward insert length mean [500.0]"
    is: ": inward insert length std dev [10.0]"
    os: ": outward insert length std dev [15.0]"
    ip: ": probability for an inward read [0.5]"
    er: ": illumina error char [^]"
    nr: ": number of reads to make [1000]"
    rl: ": read length mean [85.0]"
    rs: ": read length sigma [7.0]"
    ps: ": no error for first x bases in a read [0]"
    outputs_two_files: ": outputs two fastq files for bowtie mapping [off]"
  }
}