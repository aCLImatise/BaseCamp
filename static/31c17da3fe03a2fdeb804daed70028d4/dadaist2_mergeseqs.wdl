version 1.0

task Dadaist2mergeseqs {
  input {
    File? input_file
    File? fast_a
    String? pair_spacer
    String? strip
    String? seq_name
    Int? max_mismatches
    String? id
    Boolean? print_verbose_output
    String features
    String print
    String column
    String var_11
    String name
  }
  command <<<
    dadaist2_mergeseqs \
      ~{features} \
      ~{print} \
      ~{column} \
      ~{var_11} \
      ~{name} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(pair_spacer) then ("--pair-spacer " +  '"' + pair_spacer + '"') else ""} \
      ~{if defined(strip) then ("--strip " +  '"' + strip + '"') else ""} \
      ~{if defined(seq_name) then ("--seq-name " +  '"' + seq_name + '"') else ""} \
      ~{if defined(max_mismatches) then ("--max-mismatches " +  '"' + max_mismatches + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if (print_verbose_output) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.9.5--h38613fd_0"
  }
  parameter_meta {
    input_file: "FASTA or FASTQ file"
    fast_a: "Write new sequences to FASTA"
    pair_spacer: "Pairs separator [default: NNNNNNNNNN]"
    strip: "Remove this string from sample names"
    seq_name: "Sequence string name [default: MD5]"
    max_mismatches: "Maximum allowed mismatches [default: 0]"
    id: "Features column name [default: #OTU ID]"
    print_verbose_output: "Print verbose output"
    features: ""
    print: ""
    column: ""
    var_11: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}