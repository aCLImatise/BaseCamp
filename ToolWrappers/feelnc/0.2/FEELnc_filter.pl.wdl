version 1.0

task FEELncFilterpl {
  input {
    Boolean? man
    Boolean? verbosity
    File? in_file
    File? mrna_file
    Int? size
    Boolean? biotype
    Boolean? linc_only
    Boolean? mono_ex
    Int? biex
    Int? min_frac_over
    Int? proc
    File? out_log
  }
  command <<<
    FEELnc_filter_pl \
      ~{if (man) then "--man" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(mrna_file) then ("--mRNAfile " +  '"' + mrna_file + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if (biotype) then "--biotype" else ""} \
      ~{if (linc_only) then "--linconly" else ""} \
      ~{if (mono_ex) then "--monoex" else ""} \
      ~{if defined(biex) then ("--biex " +  '"' + biex + '"') else ""} \
      ~{if defined(min_frac_over) then ("--minfrac_over " +  '"' + min_frac_over + '"') else ""} \
      ~{if defined(proc) then ("--proc " +  '"' + proc + '"') else ""} \
      ~{if defined(out_log) then ("--outlog " +  '"' + out_log + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/feelnc:0.2--pl526_0"
  }
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
  output {
    File out_stdout = stdout()
    File out_out_log = "${in_out_log}"
  }
}