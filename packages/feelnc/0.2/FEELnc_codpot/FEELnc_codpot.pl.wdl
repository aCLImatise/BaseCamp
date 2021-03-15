version 1.0

task FEELncCodpotpl {
  input {
    Boolean? man
    Boolean? verbosity
    File? in_file
    File? mrna_file
    File? genome
    File? l_ncrna_file
    Boolean? biotype
    Int? num_tx
    Boolean? rf_cut
    Int? speth_res
    Int? km_er
    File? out_name
    Directory? outdir
    Boolean? mode
    Int? size_inter
    Int? learn_orf_type
    Int? test_orf_type
    Boolean? n_tree
    Int? percentage
    Int? keep_tmp
    Int? seed
    String? to
    String known_l_ncdot_gtf
  }
  command <<<
    FEELnc_codpot_pl \
      ~{known_l_ncdot_gtf} \
      ~{if (man) then "--man" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(mrna_file) then ("--mRNAfile " +  '"' + mrna_file + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(l_ncrna_file) then ("--lncRNAfile " +  '"' + l_ncrna_file + '"') else ""} \
      ~{if (biotype) then "--biotype" else ""} \
      ~{if defined(num_tx) then ("--numtx " +  '"' + num_tx + '"') else ""} \
      ~{if (rf_cut) then "--rfcut" else ""} \
      ~{if defined(speth_res) then ("--spethres " +  '"' + speth_res + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if defined(size_inter) then ("--sizeinter " +  '"' + size_inter + '"') else ""} \
      ~{if defined(learn_orf_type) then ("--learnorftype " +  '"' + learn_orf_type + '"') else ""} \
      ~{if defined(test_orf_type) then ("--testorftype " +  '"' + test_orf_type + '"') else ""} \
      ~{if (n_tree) then "--ntree" else ""} \
      ~{if defined(percentage) then ("--percentage " +  '"' + percentage + '"') else ""} \
      ~{if defined(keep_tmp) then ("--keeptmp " +  '"' + keep_tmp + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(to) then ("-to " +  '"' + to + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/feelnc:0.2--pl526_0"
  }
  parameter_meta {
    man: "Open man page"
    verbosity: "Level of verbosity"
    in_file: "/.fasta           Specify the .GTF or .FASTA file  (such as a cufflinks transcripts/merged .GTF or .FASTA file)"
    mrna_file: "/.fasta         Specify the annotation .GTF or .FASTA file  (file of protein coding transcripts .GTF or .FASTA file)"
    genome: "Genome file or directory with chr files (mandatory if input is .GTF) [ default undef ]"
    l_ncrna_file: "/.fasta       Specify a known set of lncRNA for training .GTF or .FASTA  [ default undef ]"
    biotype: "Only consider transcripts having this(these) biotype(s) from the reference annotation (e.g : -b transcript_biotype=protein_coding,pseudogene) [default undef i.e all transcripts]"
    num_tx: "Number of mRNA and lncRNA transcripts required for the training. mRNAs and lncRNAs numbers need to be separate by a ',': i.e. 1500,1000 for 1500 mRNAs and 1000 lncRNAs. For all the annotation, let it blank [ default undef, all the two annotations ]"
    rf_cut: "=[0-1]                      Random forest voting cutoff [ default undef i.e will compute best cutoff ]"
    speth_res: "Two specificity threshold based on the 10-fold cross-validation, first one for mRNA and the second for lncRNA, need to be in ]0,1[ on separated by a ','"
    km_er: ",2,3,6,9,12                Kmer size list with size separate by ',' as string [ default \\\"1,2,3,6,9,12\\\" ], the maximum value for one size is '15'"
    out_name: "Output filename [ default infile_name ]"
    outdir: "=\\\"feelnc_codpot_out/\\\"         Output directory [ default \\\"./feelnc_codpot_out/\\\" ]"
    mode: "The mode of the lncRNA sequences simulation if no lncRNA sequences have been provided. The mode can be:\\n'shuffle'   : make a permutation of mRNA sequences while preserving the 7mer count. Can be done on either FASTA and GTF input file;\\n'intergenic': extract intergenic sequences. Can be done *only* on GTF input file."
    size_inter: "Ratio between mRNA sequence lengths and non coding intergenic region sequence lengths as, by default, ncInter = mRNA * 0.75"
    learn_orf_type: "Integer [0,1,2,3,4] to specify the type of longest ORF calculate [ default: 3 ] for learning data set.\\nIf the CDS is annotated in the .GTF, then the CDS is considered as the longest ORF, whatever the --orftype value.\\n'0': ORF with start and stop codon;\\n'1': same as '0' and ORF with only a start codon, take the longest;\\n'2': same as '1' but with a stop codon;\\n'3': same as '0' and ORF with a start or a stop, take the longest (see '1' and '2');\\n'4': same as '3' but if no ORF is found, take the input sequence as ORF."
    test_orf_type: "Integer [0,1,2,3,4] to specify the type of longest ORF calculate [ default: 3 ] for test data set. See --learnortype description for more informations."
    n_tree: "Number of trees used in random forest [ default 500 ]"
    percentage: "Percentage of the training file use for the training of the kmer model. What remains will be used to train the random forest"
    keep_tmp: "To keep the temporary files in a 'tmp' directory the outdir, by default don't keep it (0 value). Any other value than 0 will keep the temporary files"
    seed: "Use to fixe the seed value for the extraction of intergenic DNA region to get lncRNA like sequences and for the random forest [ default 1234 ]"
    to: "added"
    known_l_ncdot_gtf: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_name = "${in_out_name}"
    Directory out_outdir = "${in_outdir}"
  }
}