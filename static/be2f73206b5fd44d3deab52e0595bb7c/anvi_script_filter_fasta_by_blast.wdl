version 1.0

task AnviScriptFilterFastaByBlast {
  input {
    String? fast_a_file
    File? output_file
    String? delimited_file_
    String? out_fmt
    String? threshold
    Boolean? just_do_it
  }
  command <<<
    anvi-script-filter-fasta-by-blast \
      ~{if defined(fast_a_file) then ("--fasta-file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(delimited_file_) then ("-b " +  '"' + delimited_file_ + '"') else ""} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{true="--just-do-it" false="" just_do_it}
  >>>
  parameter_meta {
    fast_a_file: "A FASTA-formatted input file"
    output_file: "File path to store results."
    delimited_file_: "DELIMITED FILE, --blast-output TAB DELIMITED FILE BLAST table generated with blastp. `--outfmt 6` as the output format is assumed."
    out_fmt: "Specify the column ordering of your BLAST report. We add the following paramter to our BLAST searches so the output report contains the `qlen` field, which is not included by default: `-outfmt '6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore qlen slen'`. You may have used a different `-outfmt` paramter, and you should use this parameter to explicitly define the column names in your output file. For instance, if you had used the parameter mentioned above, then the correct version of this parameter would be: \"qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore qlen slen\". Regardless of the BLAST output format, your columns MUST contain the following parameters for this program to work properly: 'qseqid', 'bitscore', 'length', 'qlen', and 'pident'."
    threshold: "What `proper_pident` threshold do you want to use for filtering out sequences whose top bit-score matches have `proper_pident`s less than this threshold? We have defined `proper_pident` to be the percentage of the query amino acids that both aligned to and were identical to the corresponding matched amino acid. Note that the `pident` parameter output by BLAST does not include regions of the query sequence unaligned to the matched sequence, whereas `proper_pident` does. For example, a sequence that's only half aligned by a match but with 100% identity at matched regions has a `pident` of 100 but a `proper_pident` of 50. The default is 30.0%."
    just_do_it: "Don't bother me with questions or warnings, just do it."
  }
}