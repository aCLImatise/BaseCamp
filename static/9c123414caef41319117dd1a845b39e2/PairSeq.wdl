version 1.0

task PairSeq.py {
  input {
    Array[String] ordered_list_headprimary
    Array[String] ordered_list_tailsecondary
    String? outdir
    String? out_name
    Boolean? failed
    Boolean? fast_a
    String? delim
    Array[String] one_f
    Array[String] two_f
    String? act
    String? coord
    String pair_pass
    String pair_fail
  }
  command <<<
    PairSeq.py \
      ~{pair_pass} \
      ~{pair_fail} \
      ~{if defined(ordered_list_headprimary) then ("-1 " +  '"' + ordered_list_headprimary + '"') else ""} \
      ~{if defined(ordered_list_tailsecondary) then ("-2 " +  '"' + ordered_list_tailsecondary + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{true="--failed" false="" failed} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(one_f) then ("--1f " +  '"' + one_f + '"') else ""} \
      ~{if defined(two_f) then ("--2f " +  '"' + two_f + '"') else ""} \
      ~{if defined(act) then ("--act " +  '"' + act + '"') else ""} \
      ~{if defined(coord) then ("--coord " +  '"' + coord + '"') else ""}
  >>>
  parameter_meta {
    ordered_list_headprimary: "An ordered list of FASTA/FASTQ files containing head/primary sequences. (default: None)"
    ordered_list_tailsecondary: "An ordered list of FASTA/FASTQ files containing tail/secondary sequences. (default: None)"
    outdir: "Specify to changes the output directory to the location specified. The input file directory is used if this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed output file to the string specified. May not be specified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail processing. (default: False)"
    fast_a: "Specify to force output as FASTA rather than FASTQ. (default: None)"
    delim: "DELIMITER DELIMITER A list of the three delimiters that separate annotation blocks, field names and values, and values within a field, respectively. (default: ('|', '=', ','))"
    one_f: "The annotation fields to copy from file 1 records into file 2 records. If a copied annotation already exists in a file 2 record, then the annotations copied from file 1 will be added to the front of the existing annotation. (default: None)"
    two_f: "The annotation fields to copy from file 2 records into file 1 records. If a copied annotation already exists in a file 1 record, then the annotations copied from file 2 will be added to the end of the existing annotation. (default: None)"
    act: "The collapse actions to take on all fields copied between files to combine duplicate fields into a single value. The actions \"min\", \"max\", \"sum\" perform the corresponding mathematical operation on numeric annotations. The action \"set\" collapses annotations into a comma delimited list of unique values. The action \"cat\" concatenates the values together into a single string. Only applies if the field already exists in the header before being copying from the other file. (default: None)"
    coord: "The format of the sequence identifier which defines shared coordinate information across mate pairs. (default: presto)"
    pair_pass: "successfully paired reads with modified annotations."
    pair_fail: "raw reads that could not be assigned to a mate-pair."
  }
}