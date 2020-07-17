version 1.0

task AgatSpExtractSequences.pl {
  input {
    Boolean? full
    String? upstream
    String? downstream
    Boolean? cdna
    Boolean? of_s
    String? clean_internal_stop
    String? clean_final_stop
    String? remove_orf_offset
    String? string_output_fasta
  }
  command <<<
    agat_sp_extract_sequences.pl \
      ~{true="--full" false="" full} \
      ~{if defined(upstream) then ("-upstream " +  '"' + upstream + '"') else ""} \
      ~{if defined(downstream) then ("-downstream " +  '"' + downstream + '"') else ""} \
      ~{true="--cdna" false="" cdna} \
      ~{true="--ofs" false="" of_s} \
      ~{if defined(clean_internal_stop) then ("--clean_internal_stop " +  '"' + clean_internal_stop + '"') else ""} \
      ~{if defined(clean_final_stop) then ("--clean_final_stop " +  '"' + clean_final_stop + '"') else ""} \
      ~{if defined(remove_orf_offset) then ("--remove_orf_offset " +  '"' + remove_orf_offset + '"') else ""} \
      ~{if defined(string_output_fasta) then ("--output " +  '"' + string_output_fasta + '"') else ""}
  >>>
  parameter_meta {
    full: "Boolean - This option allows dealing with multifeature like cds or exon, to extract the full sequence from start extremity to the end extremity, i.e with introns. The use of that option with exon feature will give the same result as extracting the mrna sequence (-t mRNA) and corresponds to the cdna*. (To actually extract an mRNA as it is defined biologicaly you need to use the `-t exon` option wihtout the --full option and wihtout the --split option) Use of that option on cds will give the cdna* wihtout the untraslated sequences. *Not a real cdna because it is not reversed"
    upstream: "Integer - It will take that number of nucleotide in more at the 5' extremity. /!\ You must activate the option \"--full\" if you with to extract only the most upstream part of certain feature (exon,cds,utr) otherwise you will extract each upstream parts of the subfeatures (e.g many cds parts may be needed to shape a cds in its whole)."
    downstream: "Integer - It will take that number of nucleotide in more at the 3' extremity. /!\ You must activate the option \"--full\" if you with to extract only the most downstream part of certain feature (exon,cds,utr) otherwise you will extract each downstream parts of the subfeatures (e.g many cds parts may be needed to shape a cds in its whole)."
    cdna: "Boolean - This extract the cdna* sequence (i.e transcribed sequence (devoid of introns, but containing untranslated exons)). It corresponds to extract the exons sequences. *Not a real cdna because it is not reversed"
    of_s: "String - Output Fields Separator for the description field of the header of the created fasta sequences. By default it's a space < > but can be modified by any String or character using this option."
    clean_internal_stop: "Boolean - The Clean Internal Stop option allows replacing the translation of the stop codons present among the sequence that is represented by the <*> character by <X>. Indeed the <*> character can be disturbing for many programs (e.g interproscan)"
    clean_final_stop: "Boolean - The Clean Final Stop option allows removing the translation of the final stop codons that is represented by the <*> character. This character can be disturbing for many programs (e.g interproscan)"
    remove_orf_offset: "Boolean - CDS can start with a phase different from 0 when a gene model is fragmented. When asking for protein translation this (start) offset is trimmed out automatically. But when you extract CDS dna sequences, this (start) offset is not removed by default. To remove it activate this option. If --up or --do option are used too, the (start) offset is trimmed first, then is added the piece of sequence asked for."
    string_output_fasta: "String - Output fasta file. If no output file is specified, the output will be written to STDOUT."
  }
}