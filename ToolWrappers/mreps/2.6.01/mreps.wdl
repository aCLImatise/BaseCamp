version 1.0

task Mreps {
  input {
    String? specifies_sequence_command
    Boolean? fast_a
    String? res
    String? from
    String? to
    Int? minsize
    Int? maxsize
    String? min_period
    String? max_period
    String? exp
    Boolean? allow_small
    Int? win
    Boolean? version
    File? xml_output
    Boolean? no_print
    String? options
  }
  command <<<
    mreps \
      ~{options} \
      ~{if defined(specifies_sequence_command) then ("-s " +  '"' + specifies_sequence_command + '"') else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if defined(res) then ("-res " +  '"' + res + '"') else ""} \
      ~{if defined(from) then ("-from " +  '"' + from + '"') else ""} \
      ~{if defined(to) then ("-to " +  '"' + to + '"') else ""} \
      ~{if defined(minsize) then ("-minsize " +  '"' + minsize + '"') else ""} \
      ~{if defined(maxsize) then ("-maxsize " +  '"' + maxsize + '"') else ""} \
      ~{if defined(min_period) then ("-minperiod " +  '"' + min_period + '"') else ""} \
      ~{if defined(max_period) then ("-maxperiod " +  '"' + max_period + '"') else ""} \
      ~{if defined(exp) then ("-exp " +  '"' + exp + '"') else ""} \
      ~{if (allow_small) then "-allowsmall" else ""} \
      ~{if defined(win) then ("-win " +  '"' + win + '"') else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if defined(xml_output) then ("-xmloutput " +  '"' + xml_output + '"') else ""} \
      ~{if (no_print) then "-noprint" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specifies_sequence_command: ": specifies the sequence in command line"
    fast_a: ": allows DNA sequences in FASTA format"
    res: ": \\\"resolution\\\" (error level)"
    from: ": starting position n"
    to: ": end position n"
    minsize: ": repeats whose size is at least n"
    maxsize: ": repeats whose size is at most n"
    min_period: ": repeats whose period is at least n"
    max_period: ": repeats whose period is at most n"
    exp: ": repeats whose exponent is at least x"
    allow_small: ": output small repeats that can occur randomly"
    win: ": process by sliding windows of size 2*n overlaping by n"
    version: ": show version"
    xml_output: ": outputs to <file> in xml format"
    no_print: ": if specified, the repetition sequences will not be output"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}