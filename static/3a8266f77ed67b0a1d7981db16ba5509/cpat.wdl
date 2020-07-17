version 1.0

task Cpat.py {
  input {
    String? gene
    String? outfile
    String? hex
    String? log_it_model
    String? ref
    String? start
    String? stop
  }
  command <<<
    cpat.py \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(hex) then ("--hex " +  '"' + hex + '"') else ""} \
      ~{if defined(log_it_model) then ("--logitModel " +  '"' + log_it_model + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""}
  >>>
  parameter_meta {
    gene: "RNAs either in BED or FASTA format: If this is BED format file, '-r/--ref' must also be specified; if this is RNA sequence file in FASTA format, ignore the ' r/--ref ' option. The input BED or FASTA file could be regular text file or compressed file (*.gz, *.bz2) or accessible url (http://, https://, ftp://)."
    outfile: "output file. Tab separated text file: geneID <tab> mRNA size <tab> ORF size <tab> Fickett Score <tab> Hexamer Score<tab>Coding Probability."
    hex: "Prebuilt hexamer frequency table (Human, Mouse, Fly, Zebrafish). Run 'make_hexamer_tab.py' to make this table out of your own training dataset."
    log_it_model: "Prebuilt training model (Human, Mouse, Fly, Zebrafish). Run 'make_logitModel.py' to build logit model out of your own training datset"
    ref: "Reference genome sequences in FASTA format. Ignore this option if FASTA file was provided to '-g/--gene'. Reference genome file will be indexed automatically (produce *.fai file along with the original *.fa file within the same directory) if hasn't been done."
    start: "Start codon (DNA sequence, so use 'T' instead of 'U') used to define open reading frame (ORF). default=ATG"
    stop: "Stop codon (DNA sequence, so use 'T' instead of 'U') used to define open reading frame (ORF). Multiple stop codons should be separated by ','. default=TAG,TAA,TGA"
  }
}