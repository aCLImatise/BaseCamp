version 1.0

task DatafunkSam2Fasta {
  input {
    File? output_fast_a
    Boolean? trim_alignment_basedhalfopen
    Boolean? pad
    Boolean? prefix_ref
    Boolean? log_all_inserts
    Boolean? log_deletions
    Boolean? log_all_deletions
    Boolean? stdout
    String? r
    String? s
    String sam_file
    String reference
    File _loginserts_log
  }
  command <<<
    datafunk sam_2_fasta \
      ~{sam_file} \
      ~{reference} \
      ~{_loginserts_log} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if (trim_alignment_basedhalfopen) then "-t" else ""} \
      ~{if (pad) then "--pad" else ""} \
      ~{if (prefix_ref) then "--prefix-ref" else ""} \
      ~{if (log_all_inserts) then "--log-all-inserts" else ""} \
      ~{if (log_deletions) then "--log-deletions" else ""} \
      ~{if (log_all_deletions) then "--log-all-deletions" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    output_fast_a: "FASTA format file to write. Prints to stdout if not\\nspecified"
    trim_alignment_basedhalfopen: "[[start]:[end]], --trim [[start]:[end]]\\ntrim the alignment to these coordinates (0-based,\\nhalf-open)"
    pad: "if --trim, pad trimmed ends with Ns, to retain\\nreference length"
    prefix_ref: "write the reference sequence at the beginning of the"
    log_all_inserts: "log all (including singleton) insertions relative to\\nthe reference"
    log_deletions: "log non-singleton deletions relative to the reference"
    log_all_deletions: "log all (including singleton) deletions relative to\\nthe reference"
    stdout: "Overides -o/--output-fasta if present and prints\\noutput to stdout\\n"
    r: ""
    s: ""
    sam_file: "-r reference.fasta, --reference reference.fasta"
    reference: "optional arguments:"
    _loginserts_log: "--log-inserts         log non-singleton insertions relative to the reference"
  }
  output {
    File out_stdout = stdout()
  }
}