version 1.0

task Fuorf {
  input {
    File? r_one
    File? r_two
    Int? min_size
    String? prefix
    Int? min_overlap
    Int? max_overlap
    Float? min_identity
    Boolean? join
    Int? pool_size
    Boolean? print_verbose_log
    String maximum
    String minimum
    String print
    String show
    Int size
    String pe
    String of
    String sequence
    String var_18
    String identity
    String overlap
    String the
    String in
    String sequences
    String var_array
    String to
    String be
    String processed
  }
  command <<<
    fu_orf \
      ~{maximum} \
      ~{minimum} \
      ~{print} \
      ~{show} \
      ~{size} \
      ~{pe} \
      ~{of} \
      ~{sequence} \
      ~{var_18} \
      ~{identity} \
      ~{overlap} \
      ~{the} \
      ~{in} \
      ~{sequences} \
      ~{var_array} \
      ~{to} \
      ~{be} \
      ~{processed} \
      ~{if defined(r_one) then ("--R1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("--R2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(max_overlap) then ("--max-overlap " +  '"' + max_overlap + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if (join) then "--join" else ""} \
      ~{if defined(pool_size) then ("--pool-size " +  '"' + pool_size + '"') else ""} \
      ~{if (print_verbose_log) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.8.13--hed695b0_0"
  }
  parameter_meta {
    r_one: "First paired end file"
    r_two: "Second paired end file"
    min_size: "Minimum ORF size (aa) [default: 25]"
    prefix: "Rename reads using this prefix"
    min_overlap: "Minimum PE overlap [default: 12]"
    max_overlap: "Maximum PE overlap [default: 200]"
    min_identity: "Minimum sequence identity in overlap [default: 0.80]"
    join: "Attempt Paired-End joining"
    pool_size: "Size of the sequences array to be processed\\nby each working thread [default: 250]"
    print_verbose_log: "Print verbose log"
    maximum: ""
    minimum: ""
    print: ""
    show: ""
    size: ""
    pe: ""
    of: ""
    sequence: ""
    var_18: ""
    identity: ""
    overlap: ""
    the: ""
    in: ""
    sequences: ""
    var_array: ""
    to: ""
    be: ""
    processed: ""
  }
  output {
    File out_stdout = stdout()
  }
}