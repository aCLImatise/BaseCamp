version 1.0

task Alncut {
  input {
    Boolean? gap_free
    Boolean? all_gap
    Boolean? pars_inf
    Boolean? negate
    Boolean? verbose
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? specify_type_sequence
  }
  command <<<
    alncut \
      ~{if (gap_free) then "--gapfree" else ""} \
      ~{if (all_gap) then "--allgap" else ""} \
      ~{if (pars_inf) then "--parsinf" else ""} \
      ~{if (negate) then "--negate" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
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
    gap_free: "Print only sites that contain no gaps"
    all_gap: "Print only sites that contain exclusively gaps"
    pars_inf: "Print only sites that are parsimoniously informative.\\nParsimoniously informative sites are variable sites in which at\\nleast two different site-characters or states are each\\nrepresented in at least two different sequences."
    negate: "Print set-complement of sites otherwise selected; as a sole\\noption, will print only variable sites"
    verbose: "Print numbers and indices of sites selected by the criteria to\\nSTDERR"
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