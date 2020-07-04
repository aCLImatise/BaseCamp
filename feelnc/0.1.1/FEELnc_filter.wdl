version 1.0

task FEELncFilter.pl {
  input {
    Boolean? man
    Boolean? verbosity
    File? in_file
    File? mrna_file
    String? size
    Boolean? biotype
    Boolean? linc_only
    Boolean? mono_ex
    String? biex
    String? min_frac_over
    String? proc
    File? out_log
  }
  command <<<
    FEELnc_filter.pl \
      ~{true="--man" false="" man} \
      ~{true="--verbosity" false="" verbosity} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(mrna_file) then ("--mRNAfile " +  '"' + mrna_file + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{true="--biotype" false="" biotype} \
      ~{true="--linconly" false="" linc_only} \
      ~{true="--monoex" false="" mono_ex} \
      ~{if defined(biex) then ("--biex " +  '"' + biex + '"') else ""} \
      ~{if defined(min_frac_over) then ("--minfrac_over " +  '"' + min_frac_over + '"') else ""} \
      ~{if defined(proc) then ("--proc " +  '"' + proc + '"') else ""} \
      ~{if defined(out_log) then ("--outlog " +  '"' + out_log + '"') else ""}
  >>>
  parameter_meta {
    man: "Open man page"
    verbosity: "Level of verbosity 0, 1 and 2 [default 1]"
    in_file: "Specify the GTF file to be filtered (such as a cufflinks transcripts/merged .GTF file)"
    mrna_file: "Specify the annotation GTF file to be filtered on based on sense exon overlap (file of protein coding annotation)"
    size: "Keep transcript with a minimal size (default 200)"
    biotype: "Only consider transcript(s) from the reference annotation having this(these) biotype(s) (e.g : -b transcript_biotype=protein_coding,pseudogene) [default undef i.e all transcripts]"
    linc_only: "Keep only long intergenic/interveaning ncRNAs [default FALSE]"
    mono_ex: "=-1|0|1             Keep monoexonic transcript(s): mode to be selected from : -1 keep monoexonic antisense (for RNASeq stranded protocol), 1 keep all monoexonic, 0 remove all monoexonic   [default 0]"
    biex: "Discard biexonic transcripts having one exon size lower to this value (default 25)"
    min_frac_over: "Minimal fraction out of the candidate lncRNA size to be considered for overlap [default 0 i.e 1nt]"
    proc: "Number of thread for computing overlap [default 4]"
    out_log: "Specify the log file of output which [default infile.log]"
  }
}