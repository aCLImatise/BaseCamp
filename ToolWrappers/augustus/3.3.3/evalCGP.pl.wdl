version 1.0

task EvalCGPpl {
  input {
    File? eval_exec_dir
    Int? join_genes
    Int? whole_genome
    Int? alternatives
    Int? no_selection
    Int? no_join
    String annotation_dot_gtf
    String prediction_dot_gtf
  }
  command <<<
    evalCGP_pl \
      ~{annotation_dot_gtf} \
      ~{prediction_dot_gtf} \
      ~{if defined(eval_exec_dir) then ("--eval_exec_dir " +  '"' + eval_exec_dir + '"') else ""} \
      ~{if defined(join_genes) then ("--joingenes " +  '"' + join_genes + '"') else ""} \
      ~{if defined(whole_genome) then ("--wholeGenome " +  '"' + whole_genome + '"') else ""} \
      ~{if defined(alternatives) then ("--alternatives " +  '"' + alternatives + '"') else ""} \
      ~{if defined(no_selection) then ("--noselection " +  '"' + no_selection + '"') else ""} \
      ~{if defined(no_join) then ("--nojoin " +  '"' + no_join + '"') else ""}
  >>>
  parameter_meta {
    eval_exec_dir: "Directory that contains the executable evaluate_gtf.pl from the eval package.\\nIf not specified it must be in \\$PATH environment variable."
    join_genes: "Use this option to merge genes in the prediction set and filter out duplicates (default: 0)"
    whole_genome: "If this flag is set evaluation is on the whole genome. Per default, evaluation\\nis restricted to the gene ranges"
    alternatives: "Parameter of joingenes. If this flag is set, joingenes keeps alternative splice forms of a gene, otherwise\\nit only keeps the best splicing form. Per definition, alternative splice forms are either transcripts\\nwith the same gene ID or the same coding start AND end coordinates (default: 0)."
    no_selection: "Parameter of joingenes. If this flag is set, joingenes does NOT select a single best transcripts\\namong multiple conflicting transcripts. Two transcripts are confliciting if they overlap\\neach other and are no alternative splice forms.\\nconsidered as conflicting."
    no_join: "Parameter of joingenes. If this flag is set, joingenes does NOT create new\\ntranscripts by merging input transcripts, f.i. it does NOT combine two\\nincomplete transcripts to a single complete transcript, where possible.\\n"
    annotation_dot_gtf: "Annotation file in GTF format."
    prediction_dot_gtf: "Prediction file in GTF format."
  }
  output {
    File out_stdout = stdout()
  }
}