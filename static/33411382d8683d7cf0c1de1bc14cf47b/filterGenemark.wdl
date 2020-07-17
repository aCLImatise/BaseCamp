version 1.0

task FilterGenemark.pl {
  input {
    Int? introns
    String? genemark
    String? specifies_output_file
    Boolean? suppress
    Boolean? filter_out_short
    String genemark_dot_gtf
    Int introns_dot_gff
  }
  command <<<
    filterGenemark.pl \
      ~{genemark_dot_gtf} \
      ~{introns_dot_gff} \
      ~{if defined(introns) then ("--introns " +  '"' + introns + '"') else ""} \
      ~{if defined(genemark) then ("--genemark " +  '"' + genemark + '"') else ""} \
      ~{if defined(specifies_output_file) then ("--output " +  '"' + specifies_output_file + '"') else ""} \
      ~{true="--suppress" false="" suppress} \
      ~{true="--filterOutShort" false="" filter_out_short}
  >>>
  parameter_meta {
    introns: "Corresponding intron file in gff format"
    genemark: "File in gtf format"
    specifies_output_file: "Specifies output file name. Default is 'genemark-input_file_name.c.gtf'  and 'genemark-input_file_name.f.good.gtf' and 'genemark-input_file_name.f.bad.gtf' for filtered genes included and not included  in intron file respectively"
    suppress: "Suppress file output"
    filter_out_short: "Filters intron containing genes as \"bad\" that have an RNA-Seq supported intron within 2*maximal CDS length of the gene with at least 20% of average intron  multiplicity for that gene (screens also downstream of stop, which either indicates  wrong reading frame, or a downstream UTR)"
    genemark_dot_gtf: "file in gtf format"
    introns_dot_gff: "corresponding introns file in gff format"
  }
}