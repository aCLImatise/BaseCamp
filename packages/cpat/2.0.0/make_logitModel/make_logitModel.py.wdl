version 1.0

task MakeLogitModelpy {
  input {
    File? c_gene
    File? n_gene
    String? outfile
    String? hex
    File? ref
    String? start
    String? stop
  }
  command <<<
    make_logitModel_py \
      ~{if defined(c_gene) then ("--cgene " +  '"' + c_gene + '"') else ""} \
      ~{if defined(n_gene) then ("--ngene " +  '"' + n_gene + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(hex) then ("--hex " +  '"' + hex + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""}
  >>>
  parameter_meta {
    c_gene: "Protein coding transcripts (used to build logit model)\\neither in BED format or mRNA sequences in FASTA\\nformat: If this is BED format file, '-r' must be\\nspecified; if this is mRNA sequence file in FASTA\\nformat, ignore the '-r' option. The input BED or FASTA\\nfile could be regular text file or compressed file\\n(*.gz, *.bz2) or accessible url. NOTE: transcript ID\\nshould be unique."
    n_gene: "Non protein coding transcripts (used to build logit\\nmodel) either in BED format or mRNA sequences in FASTA\\nformat: If this is BED format file, '-r' must be\\nspecified; if this is mRNA sequence file in FASTA\\nformat, ignore the '-r' option. The input BED or FASTA\\nfile could be regular text file or compressed file\\n(*.gz, *.bz2) or accessible url.  NOTE: transcript ID\\nshould be unique."
    outfile: "output prefix."
    hex: "Prebuilt hexamer frequency table (Human, Mouse, Fly,\\nZebrafish). Run 'make_hexamer_tab.py' to generate this\\ntable."
    ref: "Reference genome sequences in FASTA format. Ignore\\nthis option if mRNA sequences file was provided to\\n'-g'. Reference genome file will be indexed\\nautomatically (produce *.fai file along with the\\noriginal *.fa file within the same directory) if\\nhasn't been done."
    start: "Start codon (DNA sequence, so use 'T' instead of 'U')\\nused to define open reading frame (ORF). default=ATG"
    stop: "Stop codon (DNA sequence, so use 'T' instead of 'U')\\nused to define open reading frame (ORF). Multiple stop\\ncodons should be separated by ','. default=TAG,TAA,TGA\\n"
  }
  output {
    File out_stdout = stdout()
  }
}