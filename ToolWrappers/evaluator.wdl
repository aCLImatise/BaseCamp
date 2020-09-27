version 1.0

task Evaluator {
  input {
    File? genome_gff
    Boolean? model_gff
    Boolean? genome
    Boolean? rm_off
    Boolean? retry
    Boolean? cpus
    Boolean? force
    Boolean? again
    Boolean? ctl
    String changed_dot
  }
  command <<<
    evaluator \
      ~{changed_dot} \
      ~{if defined(genome_gff) then ("-genome_gff " +  '"' + genome_gff + '"') else ""} \
      ~{if (model_gff) then "-model_gff" else ""} \
      ~{if (genome) then "-genome" else ""} \
      ~{if (rm_off) then "-RM_off" else ""} \
      ~{if (retry) then "-retry" else ""} \
      ~{if (cpus) then "-cpus" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (again) then "-again" else ""} \
      ~{if (ctl) then "-CTL" else ""}
  >>>
  parameter_meta {
    genome_gff: "Specify the maker gff file to evaluate."
    model_gff: "<file>  Specify the external gff file to evaluate."
    genome: "<file>  Specify the genome fasta file.  This if optional if the\\nfasta entries are also found in the gff file."
    rm_off: "|R           Turns all repeat masking off."
    retry: "<integer>  Rerun failed contigs up to the specified count."
    cpus: "|c  <integer>  Tells how many cpus to use for BLAST analysis."
    force: "|f            Forces program to delete old files before running again.\\nThis will require all blast analyses to be rerun."
    again: "|a            Caculate all output files again even if no settings have"
    ctl: "Generate empty control files in the current directory."
    changed_dot: "-quiet|q            Silences most of the status messages."
  }
  output {
    File out_stdout = stdout()
  }
}