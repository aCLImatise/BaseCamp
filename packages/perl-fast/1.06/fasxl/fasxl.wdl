version 1.0

task Fasxl {
  input {
    Boolean? annotate
    String? join
    Boolean? gapped
    Boolean? keep
    Boolean? codon_two_aa
    Boolean? cds
    Int? frame
    Boolean? tables
    Boolean? translate_sequence_three
    Boolean? translate_sequence_six
    String? stop
    String? unknown
    Boolean? man
    Boolean? log
    Boolean? use_name_default
    Boolean? include_comment_logfile
    Boolean? format
    Boolean? fast_q
  }
  command <<<
    fasxl \
      ~{if (annotate) then "--annotate" else ""} \
      ~{if defined(join) then ("--join " +  '"' + join + '"') else ""} \
      ~{if (gapped) then "--gapped" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (codon_two_aa) then "--codon2aa" else ""} \
      ~{if (cds) then "--cds" else ""} \
      ~{if defined(frame) then ("--frame " +  '"' + frame + '"') else ""} \
      ~{if (tables) then "--tables" else ""} \
      ~{if (translate_sequence_three) then "-3" else ""} \
      ~{if (translate_sequence_six) then "-6" else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(unknown) then ("--unknown " +  '"' + unknown + '"') else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (use_name_default) then "-L" else ""} \
      ~{if (include_comment_logfile) then "-C" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (fast_q) then "--fastq" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fast:1.06--pl526_0"
  }
  parameter_meta {
    annotate: "This option outputs translations as tagged values in\\ndescriptions. By default translations are outputted in the\\nsequence."
    join: "Use a <string> to join data in the description. Default is a\\nspace character. Use \\\"\\t\\\" to indicate a tab-character."
    gapped: "This option enables translation of gapped sequences."
    keep: "Keep inputted sequences in the output. This option also enables\\nthe translation of gapped sequences."
    codon_two_aa: "turn codon alignment into a protein alignment (best used for\\ncodon-based alignments, where gaps are mod 3 length and seqs are\\nto be translated in frame 0)"
    cds: "This option is deprecated. Treat as CDS (for bacterial code, for\\nexample, treat init codons as M)."
    frame: "Specify the frame for translation [0,1,2]. By default frame 0 is\\nused."
    tables: "Output a list of NCBI genetic code tableIDs and exit."
    translate_sequence_three: "Translate each sequence in all three forward frames."
    translate_sequence_six: "Translate each sequence in all six frames."
    stop: "Specify a string to representing stop codons. By default \\\"*\\\" is\\nused."
    unknown: "Specify a string representing unknown amino acids. By default\\n\\\"X\\\" is used."
    man: "Print the manual page and exit."
    log: "Creates, or appends to, a generic FAST logfile in the current\\nworking directory. The logfile records date/time of execution,\\nfull command with options and arguments, and an optional\\ncomment."
    use_name_default: "[string], --logname=[string]\\nUse [string] as the name of the logfile. Default is\\n\\\"FAST.log.txt\\\"."
    include_comment_logfile: "[string], --comment=[string]\\nInclude comment [string] in logfile. No comment is saved by\\ndefault."
    format: "=[format]\\nUse alternative format for input. See man page for \\\"fasconvert\\\"\\nfor allowed formats. This is for convenience; the FAST tools are\\ndesigned to exchange data in Fasta format, and \\\"fasta\\\" is the\\ndefault format for this tool."
    fast_q: "Use fastq format as input and output.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}