version 1.0

task AgatSpExtractSequencespl {
  input {
    File? agatspextractsequencespl_g
    Int? split
    Int? alternative_start_codon
    Boolean? cdna
    Boolean? clean_final_stop
    Boolean? clean_internal_stop
    Int? codon
    Int? downstream
    Boolean? eo
    File? fast_a
    Boolean? full
    File? gff
    Boolean? merge
    Boolean? mrna
    Boolean? of_s
    File? string_output_file
    Boolean? plus_strand_only
    Boolean? protein
    Boolean? remove_orf_offset
    Boolean? rev_comp
    String? type
    Int? upstream
    String agat_sp_extract_sequences_do_tpl
  }
  command <<<
    agat_sp_extract_sequences_pl \
      ~{agat_sp_extract_sequences_do_tpl} \
      ~{if defined(agatspextractsequencespl_g) then ("-g " +  '"' + agatspextractsequencespl_g + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(alternative_start_codon) then ("--alternative_start_codon " +  '"' + alternative_start_codon + '"') else ""} \
      ~{if (cdna) then "--cdna" else ""} \
      ~{if defined(clean_final_stop) then ("--clean_final_stop " +  '"' + clean_final_stop + '"') else ""} \
      ~{if defined(clean_internal_stop) then ("--clean_internal_stop " +  '"' + clean_internal_stop + '"') else ""} \
      ~{if defined(codon) then ("--codon " +  '"' + codon + '"') else ""} \
      ~{if defined(downstream) then ("-downstream " +  '"' + downstream + '"') else ""} \
      ~{if (eo) then "--eo" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (full) then "--full" else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{if (mrna) then "--mrna" else ""} \
      ~{if (of_s) then "--ofs" else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""} \
      ~{if (plus_strand_only) then "--plus_strand_only" else ""} \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if defined(remove_orf_offset) then ("--remove_orf_offset " +  '"' + remove_orf_offset + '"') else ""} \
      ~{if (rev_comp) then "--revcomp" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(upstream) then ("-upstream " +  '"' + upstream + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    agatspextractsequencespl_g: "agat_sp_extract_sequences.pl -g"
    split: "extract 5'UTR with introns: agat_sp_extract_sequences.pl -g"
    alternative_start_codon: "Bolean - When activated it can affect the translation of the\\nstart codon. Indeed alternative start codons exist, and are\\ntranslated by the cells'machinery by a Methionine (M). By\\ndefault AGAT translates the first codon as other codons by the\\ncorresponding AA. If you wish to translate the first codon by a\\nM when it is a valid alternative start codon, activate this\\nparameter. If the sequence you try to translate is a CDS (or\\nstarting by a CDS), the phase is checked and the alternative\\nstart codon is accepted only if the phase is 0."
    cdna: "Boolean - This extract the cdna sequence (i.e reverse complement\\nof the mRNA: transcribed sequence (devoid of introns, but\\ncontaining untranslated exons, then reverse complemented). It\\ncorresponds to extract the exons sequences, merge them, and\\nreverse complement the sequence (--type exon --merge --revcomp)."
    clean_final_stop: "Boolean - The Clean Final Stop option allows removing the\\ntranslation of the final stop codons that is represented by the\\n<*> character. This character can be disturbing for many\\nprograms (e.g interproscan)"
    clean_internal_stop: "Boolean - The Clean Internal Stop option allows replacing the\\ntranslation of the stop codons present among the sequence that\\nis represented by the <*> character by <X>. Indeed the <*>\\ncharacter can be disturbing for many programs (e.g interproscan)"
    codon: "Integer - Allow to choose the codon table for the translation.\\n[default 1]"
    downstream: "Integer - It will take that number of nucleotide in more at the\\n3' extremity. /!\\ You must activate the option \\\"--full\\\" if you\\nwith to extract only the most downstream part of certain feature\\n(exon,cds,utr) otherwise you will extract each downstream parts\\nof the subfeatures (e.g many cds parts may be needed to shape a\\ncds in its whole)."
    eo: "Boolean - Called 'extremity only', this option will extract only\\nthe adjacent parts of a feature. This option has to be activated\\nwith -u and/or -p option. /!\\ using -u and -p together builds a\\nchimeric sequence which will be the concatenation of the left\\nand right extremities of a feature."
    fast_a: "String - Input fasta file."
    full: "Boolean - This option allows dealing with feature that may span\\nover several locations like cds or exon, in order to extract the\\nfull sequence from the start extremity of the first chunck to\\nthe end extremity of the last chunk. The use of that option with\\n'--type exon' will extract the pre-mRNA sequence (i.e with\\nintrons). Use of that option on cds will give the pre-mRNA\\nwithout the untraslated regions (UTRs). (To extract an mRNA as\\nit is defined biologicaly you need to use the `-t exon` option\\nwith the --merge option)"
    gff: "String - Input GTF/GFF file."
    merge: "- By default, only features that span several locations\\n(e.g. cds and utr can span over several exons) are merged\\ntogether. In order to merge other type of features (e.g. exon)\\nyou must activate this parameter."
    mrna: "Boolean - This extract the mrna sequence (i.e transcribed\\nsequence (devoid of introns, but containing untranslated\\nexons)). It corresponds to extract the exon sequences and merge\\nthem (--type exon --merge)."
    of_s: "String - Output Fields Separator for the description field of\\nthe header of the created fasta sequences. By default it's a\\nspace < > but can be modified by any String or character using\\nthis option."
    string_output_file: "String - Output fasta file. If no output file is specified, the\\noutput will be written to STDOUT."
    plus_strand_only: "Boolean - By default the extrated feature sequences from a minus\\nstrand is reverse complemented. Activating this option you will\\nalways get sequence from plus strand ( not reverse\\ncomplemented). You can get the opposite (minus strand only) by\\nusing --plus_strand_only --revcomp"
    protein: "Boolean - Will translate the extracted sequence in Amino acid.\\nBy default the codon table used is the 1 (Standard). See --table\\nparameter for more options."
    remove_orf_offset: "Boolean - CDS can start with a phase different from 0 when a\\ngene model is fragmented. When asking for protein translation\\nthis (start) offset is trimmed out automatically. But when you\\nextract CDS dna sequences, this (start) offset is not removed by\\ndefault. To remove it activate this option. If --up or --do\\noption are used too, the (start) offset is trimmed first, then\\nis added the piece of sequence asked for."
    rev_comp: "Boolean - To reverse complement the extracted sequence [default\\n- False]. By default the extrated feature sequences from a minus\\nstrand is reverse complemented. Consequently, for minus strand\\nfeatures that option will extract the sequences from plus strand\\nfrom left to right."
    type: "String - Define the feature you want to extract the sequence\\nfrom. Default 'cds'. Most common choice are:\\ngene,mrna,exon,cds,trna,three_prime_utr,five_prime_utr. When you\\nchoose exon (or cds,utr,etc.), all the exons of a same parent\\nfeature are attached together before to extract the sequence. If\\nyou wish to extract each exon of an mRNA independently, see\\noption --split. /!\\ `-t mRNA` will extract the features labeled\\nas \\\"mRNA\\\" and corresponds to the cdna* because it contains the\\nintrons if any. It does not actually extract the mRNAs as it is\\ndefined biologicaly. To extract the mRNA as defined biologicaly\\nyou must use `-t exon`. *Not a real cdna because it is not\\nreversed"
    upstream: "Integer - It will take that number of nucleotide in more at the\\n5' extremity. /!\\ You must activate the option \\\"--full\\\" if you\\nwish to extract only the most upstream part of certain features\\n(exon,cds,utr) otherwise you will extract each upstream parts of\\nthe subfeatures (e.g many cds parts may be needed to shape a cds\\nin its whole)."
    agat_sp_extract_sequences_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_file = "${in_string_output_file}"
  }
}