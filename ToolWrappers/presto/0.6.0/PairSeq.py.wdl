version 1.0

task PairSeqpy {
  input {
    Array[Int] ordered_list_containingheadprimary
    Array[Int] ordered_list_containingtailsecondary
    File? outdir
    File? out_name
    Boolean? failed
    Boolean? fast_a
    String? delim
    Array[Int] one_f
    Array[Int] two_f
    String? act
    String? coord
    String pair_pass
    String pair_fail
  }
  command <<<
    PairSeq_py \
      ~{pair_pass} \
      ~{pair_fail} \
      ~{if defined(ordered_list_containingheadprimary) then ("-1 " +  '"' + ordered_list_containingheadprimary + '"') else ""} \
      ~{if defined(ordered_list_containingtailsecondary) then ("-2 " +  '"' + ordered_list_containingtailsecondary + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(one_f) then ("--1f " +  '"' + one_f + '"') else ""} \
      ~{if defined(two_f) then ("--2f " +  '"' + two_f + '"') else ""} \
      ~{if defined(act) then ("--act " +  '"' + act + '"') else ""} \
      ~{if defined(coord) then ("--coord " +  '"' + coord + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ordered_list_containingheadprimary: "An ordered list of FASTA/FASTQ files containing\\nhead/primary sequences. (default: None)"
    ordered_list_containingtailsecondary: "An ordered list of FASTA/FASTQ files containing\\ntail/secondary sequences. (default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    one_f: "The annotation fields to copy from file 1 records into\\nfile 2 records. If a copied annotation already exists\\nin a file 2 record, then the annotations copied from\\nfile 1 will be added to the front of the existing\\nannotation. (default: None)"
    two_f: "The annotation fields to copy from file 2 records into\\nfile 1 records. If a copied annotation already exists\\nin a file 1 record, then the annotations copied from\\nfile 2 will be added to the end of the existing\\nannotation. (default: None)"
    act: "The collapse actions to take on all fields copied\\nbetween files to combine duplicate fields into a\\nsingle value. The actions \\\"min\\\", \\\"max\\\", \\\"sum\\\" perform\\nthe corresponding mathematical operation on numeric\\nannotations. The action \\\"set\\\" collapses annotations\\ninto a comma delimited list of unique values. The\\naction \\\"cat\\\" concatenates the values together into a\\nsingle string. Only applies if the field already\\nexists in the header before being copying from the\\nother file. (default: None)"
    coord: "The format of the sequence identifier which defines\\nshared coordinate information across mate pairs.\\n(default: presto)"
    pair_pass: "successfully paired reads with modified annotations."
    pair_fail: "raw reads that could not be assigned to a mate-pair."
  }
  output {
    File out_stdout = stdout()
  }
}