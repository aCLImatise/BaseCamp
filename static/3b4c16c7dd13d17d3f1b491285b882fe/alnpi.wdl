version 1.0

task Alnpi {
  input {
    Boolean? suppress
    Boolean? latex
    Boolean? pairwise
    Int? window
    Boolean? absolute
    String? label
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? specify_type_sequence
  }
  command <<<
    alnpi \
      ~{if (suppress) then "--suppress" else ""} \
      ~{if (latex) then "--latex" else ""} \
      ~{if (pairwise) then "--pairwise" else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if (absolute) then "--absolute" else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (use_name_default) then "-L" else ""} \
      ~{if (include_comment_logfile) then "-C" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (specify_type_sequence) then "-m" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fast:1.06--pl526_0"
  }
  parameter_meta {
    suppress: "Supress header output"
    latex: "LaTeX-style output"
    pairwise: "Statistics are calculated pairwise over all sequences"
    window: "Sliding window analysis. Option argument <string> expected to be\\nin the form \\\"window-size:step-size:statistic\\\" where window-size\\nand step-size are positive integers and \\\"statistic\\\" may be one\\nof \\\"p\\\", \\\"s\\\" or \\\"d\\\" for nucleotide diversity, Watterson estimator\\nor Tajima's D respectively."
    absolute: "Output a smaller set of statistics not normalized by number of\\ngap-free sites."
    label: "label for the input data, to be placed in the output."
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    specify_type_sequence: "[dna|rna|protein], --moltype=[dna|rna|protein]\\nSpecify the type of sequence on input (should not be needed in\\nmost cases, but sometimes Bioperl cannot guess and complains\\nwhen processing data).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}