version 1.0

task Cpatpy {
  input {
    File? gene
    Int? outfile
    String? hex
    String? log_it_model
    File? ref
    String? start
    String? stop
  }
  command <<<
    cpat_py \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(hex) then ("--hex " +  '"' + hex + '"') else ""} \
      ~{if defined(log_it_model) then ("--logitModel " +  '"' + log_it_model + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene: "RNAs either in BED or FASTA format: If this is BED\\nformat file, '-r/--ref' must also be specified; if\\nthis is RNA sequence file in FASTA format, ignore the\\n' r/--ref ' option. The input BED or FASTA file could\\nbe regular text file or compressed file (*.gz, *.bz2)\\nor accessible url (http://, https://, ftp://)."
    outfile: "output file. Tab separated text file: geneID <tab>\\nmRNA size <tab> ORF size <tab> Fickett Score <tab>\\nHexamer Score<tab>Coding Probability."
    hex: "Prebuilt hexamer frequency table (Human, Mouse, Fly,\\nZebrafish). Run 'make_hexamer_tab.py' to make this\\ntable out of your own training dataset."
    log_it_model: "Prebuilt training model (Human, Mouse, Fly,\\nZebrafish). Run 'make_logitModel.py' to build logit\\nmodel out of your own training datset"
    ref: "Reference genome sequences in FASTA format. Ignore\\nthis option if FASTA file was provided to '-g/--gene'.\\nReference genome file will be indexed automatically\\n(produce *.fai file along with the original *.fa file\\nwithin the same directory) if hasn't been done."
    start: "Start codon (DNA sequence, so use 'T' instead of 'U')\\nused to define open reading frame (ORF). default=ATG"
    stop: "Stop codon (DNA sequence, so use 'T' instead of 'U')\\nused to define open reading frame (ORF). Multiple stop\\ncodons should be separated by ','. default=TAG,TAA,TGA\\n"
  }
  output {
    File out_stdout = stdout()
  }
}