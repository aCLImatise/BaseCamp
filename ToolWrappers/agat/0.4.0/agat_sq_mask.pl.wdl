version 1.0

task AgatSqMaskpl {
  input {
    File? gff
    File? fast_a
    Boolean? sm
    Boolean? hm
    File? output_gff_file
    String agat_sq_mask_do_tpl
  }
  command <<<
    agat_sq_mask_pl \
      ~{agat_sq_mask_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (sm) then "-sm" else ""} \
      ~{if (hm) then "-hm" else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Input fasta file that will be masked"
    sm: "SoftMask option =>Sequences masked will be in lowercase"
    hm: "HardMask option => Sequences masked will be replaced by a\\ncharacter. By default the character used is 'n'. But you are\\nallowed to speceify any character of your choice. To use 'z'\\ninstead of 'n' type: -hm z"
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sq_mask_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}