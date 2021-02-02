version 1.0

task FilterGenemarkpl {
  input {
    Int? hints
    File? genemark
    File? specifies_output_file
    File? suppress
    Boolean? filter_out_short
    Int? single_cds_file
    Int? cds_part_cut_off
  }
  command <<<
    filterGenemark_pl \
      ~{if defined(hints) then ("--hints " +  '"' + hints + '"') else ""} \
      ~{if defined(genemark) then ("--genemark " +  '"' + genemark + '"') else ""} \
      ~{if defined(specifies_output_file) then ("--output " +  '"' + specifies_output_file + '"') else ""} \
      ~{if (suppress) then "--suppress" else ""} \
      ~{if (filter_out_short) then "--filterOutShort" else ""} \
      ~{if defined(single_cds_file) then ("--singleCDSfile " +  '"' + single_cds_file + '"') else ""} \
      ~{if defined(cds_part_cut_off) then ("--cdspart_cutoff " +  '"' + cds_part_cut_off + '"') else ""}
  >>>
  parameter_meta {
    hints: "Corresponding hints file in gff format;\\nit is vital that this file contains intron\\nhints; start/stop hints are optional;\\ndo not mix start/stop hints with --singleCDSfile\\n(this might double the number of evidence supported\\nsingle exon genes)"
    genemark: "File in gtf format"
    specifies_output_file: "Specifies output file name. Default are\\n'genemark-input_file_name.c.gtf'\\nand 'genemark-input_file_name.f.good.gtf'\\nand 'genemark-input_file_name.f.bad.gtf' for\\nevidence anchored genes and genes not anchored by\\nevidence (but included in the output file), respectively"
    suppress: "Suppress file output"
    filter_out_short: "Filters intron containing genes as \\\"bad\\\" that\\nhave an RNA-Seq supported intron\\nwithin 2*maximal CDS length of the gene with at\\nleast 20% of average intron\\nmultiplicity for that gene (screens also\\ndownstream of stop, which either indicates\\nwrong reading frame, or a downstream UTR)"
    single_cds_file: "file with single exon genes CDSpart hints, they\\nare used to filter single exon training genes as\\n\\\"good\\\". If number is not sufficient, unsupported\\ngenes are still added to \\\"good genes\\\" in order\\nto generate a good training gene set for\\nAUGUSTUS"
    cds_part_cut_off: "CDSpart cutoff that was used for generating hints\\ndefault 15"
  }
  output {
    File out_stdout = stdout()
    File out_suppress = "${in_suppress}"
  }
}