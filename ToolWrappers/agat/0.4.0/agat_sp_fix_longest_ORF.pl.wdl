version 1.0

task AgatSpFixLongestORFpl {
  input {
    Int? model
    Boolean? gff
    File? fast_a
    Int? codon
    Int? split
    File? outfile
    Boolean? verbose_mode_default
    String agat_sp_fix_longest_or_fdot_pl
    String verbosity
  }
  command <<<
    agat_sp_fix_longest_ORF_pl \
      ~{agat_sp_fix_longest_or_fdot_pl} \
      ~{verbosity} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if (gff) then "--gff" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(codon) then ("--codon " +  '"' + codon + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (verbose_mode_default) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    model: "Kind of ORF Model you want to fix. By default all are used. To\\nselect specific models writte e.g --model 1,4\\nModel1 = The original ORF is part of the new ORF; the new ORF is\\nlonger\\nModel2 = The original ORF and the new one are different; the new\\none is longer, they do not overlap each other.\\nModel3 = The original ORF and the new one are different; the new\\none is longer, they overlap each other.\\nModel4 = The new ORF is shorter due to the presence of stop\\ncodon in the original ORF.\\nModel5 = The new ORF is shorter but the original ORF has not\\npremature stop codon. The shorter predicted ORF can be due to\\nthe fact that the original ORF does not start by a start codon,\\nwhile we force here the prediction to have a start codon. A ORF\\nwihtout start can be the fact of an incomplete or fragmented\\nORF: annotation tool didn't predict the start because: * the\\nstart region is NNNN * the start region is XXXX * correct\\nnucleotides but prediction tool did not annotate this part (e.g\\nincomplete evidence in evidence-based prediction)\\nModel6 = The ORF is same size but not correct frame (+1 or +2 bp\\ngives a frame shift)."
    gff: "Input GTF/GFF file."
    fast_a: "Imput fasta file."
    codon: "Codon table to use. [default 1]"
    split: "This option is usefull for Model2. Indeed when the prediction is\\nnon overlapping the original cds, it is possible to split the\\ngene into two different genes. By default we don't split it. We\\nkeep the longest. If you want to split it type: -s"
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_mode_default: "verbose mode. Default off. -v 1 minimum verbosity, -v 3 maximum"
    agat_sp_fix_longest_or_fdot_pl: "Description:"
    verbosity: "-h or --help"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}