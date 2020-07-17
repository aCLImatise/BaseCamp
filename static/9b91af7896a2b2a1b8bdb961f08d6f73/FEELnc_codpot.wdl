version 1.0

task FEELncCodpot.pl {
  input {
    Boolean? man
    Boolean? verbosity
    File? in_file
    File? mrna_file
    String? genome
    File? l_ncrna_file
    Boolean? biotype
    String? num_tx
    Boolean? rf_cut
    String? speth_res
    String? km_er
    String? out_name
    Boolean? outdir
    Boolean? mode
    String? size_inter
    String? learn_orf_type
    String? test_orf_type
    Boolean? n_tree
    String? percentage
    String? keep_tmp
    String? seed
    String? to
  }
  command <<<
    FEELnc_codpot.pl \
      ~{true="--man" false="" man} \
      ~{true="--verbosity" false="" verbosity} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(mrna_file) then ("--mRNAfile " +  '"' + mrna_file + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(l_ncrna_file) then ("--lncRNAfile " +  '"' + l_ncrna_file + '"') else ""} \
      ~{true="--biotype" false="" biotype} \
      ~{if defined(num_tx) then ("--numtx " +  '"' + num_tx + '"') else ""} \
      ~{true="--rfcut" false="" rf_cut} \
      ~{if defined(speth_res) then ("--spethres " +  '"' + speth_res + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--mode" false="" mode} \
      ~{if defined(size_inter) then ("--sizeinter " +  '"' + size_inter + '"') else ""} \
      ~{if defined(learn_orf_type) then ("--learnorftype " +  '"' + learn_orf_type + '"') else ""} \
      ~{if defined(test_orf_type) then ("--testorftype " +  '"' + test_orf_type + '"') else ""} \
      ~{true="--ntree" false="" n_tree} \
      ~{if defined(percentage) then ("--percentage " +  '"' + percentage + '"') else ""} \
      ~{if defined(keep_tmp) then ("--keeptmp " +  '"' + keep_tmp + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(to) then ("-to " +  '"' + to + '"') else ""}
  >>>
  parameter_meta {
    man: "Open man page"
    verbosity: "Level of verbosity"
    in_file: "Specify the .GTF or .FASTA file  (such as a cufflinks transcripts/merged .GTF or .FASTA file)"
    mrna_file: "Specify the annotation .GTF or .FASTA file  (file of protein coding transcripts .GTF or .FASTA file)"
    genome: "Genome file or directory with chr files (mandatory if input is .GTF) [ default undef ]"
    l_ncrna_file: "Specify a known set of lncRNA for training .GTF or .FASTA  [ default undef ]"
    biotype: "Only consider transcripts having this(these) biotype(s) from the reference annotation (e.g : -b transcript_biotype=protein_coding,pseudogene) [default undef i.e all transcripts]"
    num_tx: "Number of mRNA and lncRNA transcripts required for the training. mRNAs and lncRNAs numbers need to be separate by a ',': i.e. 1500,1000 for 1500 mRNAs and 1000 lncRNAs. For all the annotation, let it blank [ default undef, all the two annotations ]"
    rf_cut: "=[0-1]                      Random forest voting cutoff [ default undef i.e will compute best cutoff ]"
    speth_res: "Two specificity threshold based on the 10-fold cross-validation, first one for mRNA and the second for lncRNA, need to be in ]0,1[ on separated by a ','"
    km_er: ",2,3,6,9,12                Kmer size list with size separate by ',' as string [ default \"1,2,3,6,9,12\" ], the maximum value for one size is '15'"
    out_name: "Output filename [ default infile_name ]"
    outdir: "=\"feelnc_codpot_out/\"         Output directory [ default \"./feelnc_codpot_out/\" ]"
    mode: "The mode of the lncRNA sequences simulation if no lncRNA sequences have been provided. The mode can be: 'shuffle'   : make a permutation of mRNA sequences while preserving the 7mer count. Can be done on either FASTA and GTF input file; 'intergenic': extract intergenic sequences. Can be done *only* on GTF input file."
    size_inter: "Ratio between mRNA sequence lengths and non coding intergenic region sequence lengths as, by default, ncInter = mRNA * 0.75"
    learn_orf_type: "Integer [0,1,2,3,4] to specify the type of longest ORF calculate [ default: 3 ] for learning data set. If the CDS is annotated in the .GTF, then the CDS is considered as the longest ORF, whatever the --orftype value. '0': ORF with start and stop codon; '1': same as '0' and ORF with only a start codon, take the longest; '2': same as '1' but with a stop codon; '3': same as '0' and ORF with a start or a stop, take the longest (see '1' and '2'); '4': same as '3' but if no ORF is found, take the input sequence as ORF."
    test_orf_type: "Integer [0,1,2,3,4] to specify the type of longest ORF calculate [ default: 3 ] for test data set. See --learnortype description for more informations."
    n_tree: "Number of trees used in random forest [ default 500 ]"
    percentage: "Percentage of the training file use for the training of the kmer model. What remains will be used to train the random forest"
    keep_tmp: "To keep the temporary files in a 'tmp' directory the outdir, by default don't keep it (0 value). Any other value than 0 will keep the temporary files"
    seed: "Use to fixe the seed value for the extraction of intergenic DNA region to get lncRNA like sequences and for the random forest [ default 1234 ]"
    to: "added"
  }
}