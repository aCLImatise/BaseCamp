version 1.0

task FilterGenemarkpl {
  input {
    File? introns
    File? genemark
    File? specifies_output_file
    File? suppress
    Boolean? filter_out_short
    String genemark_dot_gtf
    String introns_dot_gff
  }
  command <<<
    filterGenemark_pl \
      ~{genemark_dot_gtf} \
      ~{introns_dot_gff} \
      ~{if defined(introns) then ("--introns " +  '"' + introns + '"') else ""} \
      ~{if defined(genemark) then ("--genemark " +  '"' + genemark + '"') else ""} \
      ~{if defined(specifies_output_file) then ("--output " +  '"' + specifies_output_file + '"') else ""} \
      ~{if (suppress) then "--suppress" else ""} \
      ~{if (filter_out_short) then "--filterOutShort" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    introns: "Corresponding intron file in gff format"
    genemark: "File in gtf format"
    specifies_output_file: "Specifies output file name. Default is 'genemark-input_file_name.c.gtf'\\nand 'genemark-input_file_name.f.good.gtf'\\nand 'genemark-input_file_name.f.bad.gtf' for filtered genes included and not included\\nin intron file respectively"
    suppress: "Suppress file output"
    filter_out_short: "Filters intron containing genes as \\\"bad\\\" that have an RNA-Seq supported intron\\nwithin 2*maximal CDS length of the gene with at least 20% of average intron\\nmultiplicity for that gene (screens also downstream of stop, which either indicates\\nwrong reading frame, or a downstream UTR)"
    genemark_dot_gtf: "file in gtf format"
    introns_dot_gff: "corresponding introns file in gff format"
  }
  output {
    File out_stdout = stdout()
    File out_suppress = "${in_suppress}"
  }
}