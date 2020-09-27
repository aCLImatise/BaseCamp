version 1.0

task BamToPsl {
  input {
    File? fast_a
    File? chrom_alias
    Boolean? no_head
    Boolean? allow_dups
    Boolean? no_sequence_verify
    String? dots
    String in_dot_bam
  }
  command <<<
    bamToPsl \
      ~{in_dot_bam} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(chrom_alias) then ("-chromAlias " +  '"' + chrom_alias + '"') else ""} \
      ~{if (no_head) then "-nohead" else ""} \
      ~{if (allow_dups) then "-allowDups" else ""} \
      ~{if (no_sequence_verify) then "-noSequenceVerify" else ""} \
      ~{if defined(dots) then ("-dots " +  '"' + dots + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "- output query sequences to specified file"
    chrom_alias: "- specify a two-column file: 1: alias, 2: other name\\nfor target name translation from column 1 name to column 2 name\\nnames not found are passed through intact"
    no_head: "- do not output the PSL header, default has header output"
    allow_dups: "- for fasta output, allow duplicate query sequences output\\n- default is to eliminate duplicate sequences\\n- runs much faster without the duplicate check"
    no_sequence_verify: "- when checking for dups, do not verify each sequence\\n- when the same name is identical, assume they are\\n- helps speed up the dup check but not thorough"
    dots: "- output progress dot(.) every N alignments processed"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_fast_a = "${in_fast_a}"
  }
}