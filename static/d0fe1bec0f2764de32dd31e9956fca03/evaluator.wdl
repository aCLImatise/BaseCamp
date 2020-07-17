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
    Boolean? quiet
    Boolean? ctl
    String mpi_evaluator
    String eval_opts
    String eval_b_opts
    String eval_exe
  }
  command <<<
    evaluator \
      ~{mpi_evaluator} \
      ~{eval_opts} \
      ~{eval_b_opts} \
      ~{eval_exe} \
      ~{if defined(genome_gff) then ("-genome_gff " +  '"' + genome_gff + '"') else ""} \
      ~{true="-model_gff" false="" model_gff} \
      ~{true="-genome" false="" genome} \
      ~{true="-RM_off" false="" rm_off} \
      ~{true="-retry" false="" retry} \
      ~{true="-cpus" false="" cpus} \
      ~{true="-force" false="" force} \
      ~{true="-again" false="" again} \
      ~{true="-quiet" false="" quiet} \
      ~{true="-CTL" false="" ctl}
  >>>
  parameter_meta {
    genome_gff: "Specify the maker gff file to evaluate."
    model_gff: "<file>  Specify the external gff file to evaluate."
    genome: "<file>  Specify the genome fasta file.  This if optional if the fasta entries are also found in the gff file."
    rm_off: "|R           Turns all repeat masking off."
    retry: "<integer>  Rerun failed contigs up to the specified count."
    cpus: "|c  <integer>  Tells how many cpus to use for BLAST analysis."
    force: "|f            Forces program to delete old files before running again. This will require all blast analyses to be rerun."
    again: "|a            Caculate all output files again even if no settings have changed."
    quiet: "|q            Silences most of the status messages."
    ctl: "Generate empty control files in the current directory."
    mpi_evaluator: ""
    eval_opts: ""
    eval_b_opts: ""
    eval_exe: ""
  }
}