version 1.0

task AgatConvertSpGff2zffpl {
  input {
    Boolean? gff
    File? fast_a
    File? outfile
    Int agat_convert_sp_gfftwozffdotpl
  }
  command <<<
    agat_convert_sp_gff2zff_pl \
      ~{agat_convert_sp_gfftwozffdotpl} \
      ~{if (gff) then "--gff" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (outfile) then "--outfile" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file"
    fast_a: "fasta file"
    outfile: ", or -o\\nFile prefix where will be written the results (e.g. outfile.ann\\nand outfile.dna). If no output file is specified, the output\\nwill be written to STDOUT."
    agat_convert_sp_gfftwozffdotpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}