version 1.0

task MakeLogitModel.py {
  input {
    String? c_gene
    String? n_gene
    String? outfile
    String? hex
    String? ref
    String? start
    String? stop
  }
  command <<<
    make_logitModel.py \
      ~{if defined(c_gene) then ("--cgene " +  '"' + c_gene + '"') else ""} \
      ~{if defined(n_gene) then ("--ngene " +  '"' + n_gene + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(hex) then ("--hex " +  '"' + hex + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""}
  >>>
  parameter_meta {
    c_gene: "Protein coding transcripts (used to build logit model) either in BED format or mRNA sequences in FASTA format: If this is BED format file, '-r' must be specified; if this is mRNA sequence file in FASTA format, ignore the '-r' option. The input BED or FASTA file could be regular text file or compressed file (*.gz, *.bz2) or accessible url. NOTE: transcript ID should be unique."
    n_gene: "Non protein coding transcripts (used to build logit model) either in BED format or mRNA sequences in FASTA format: If this is BED format file, '-r' must be specified; if this is mRNA sequence file in FASTA format, ignore the '-r' option. The input BED or FASTA file could be regular text file or compressed file (*.gz, *.bz2) or accessible url.  NOTE: transcript ID should be unique."
    outfile: "output prefix."
    hex: "Prebuilt hexamer frequency table (Human, Mouse, Fly, Zebrafish). Run 'make_hexamer_tab.py' to generate this table."
    ref: "Reference genome sequences in FASTA format. Ignore this option if mRNA sequences file was provided to '-g'. Reference genome file will be indexed automatically (produce *.fai file along with the original *.fa file within the same directory) if hasn't been done."
    start: "Start codon (DNA sequence, so use 'T' instead of 'U') used to define open reading frame (ORF). default=ATG"
    stop: "Stop codon (DNA sequence, so use 'T' instead of 'U') used to define open reading frame (ORF). Multiple stop codons should be separated by ','. default=TAG,TAA,TGA"
  }
}