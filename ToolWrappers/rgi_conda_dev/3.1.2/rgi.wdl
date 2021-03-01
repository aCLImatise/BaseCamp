version 1.0

task Rgi {
  input {
    String? input_type
    File? input_sequence
    Int? num_threads
    File? output_file
    String? loose_criteria
    Directory? clean
    String? data
    File? verbose
    String? alignment_tool
    File? db
    Boolean? software_version
    Boolean? data_version
  }
  command <<<
    rgi \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{if defined(input_sequence) then ("--input_sequence " +  '"' + input_sequence + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(loose_criteria) then ("--loose_criteria " +  '"' + loose_criteria + '"') else ""} \
      ~{if defined(clean) then ("--clean " +  '"' + clean + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(alignment_tool) then ("--alignment_tool " +  '"' + alignment_tool + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (software_version) then "--software_version" else ""} \
      ~{if (data_version) then "--data_version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_type: "must be one of contig, orf, protein, read (default:\\ncontig)"
    input_sequence: "input file must be in either FASTA (contig and\\nprotein), FASTQ(read) or gzip format! e.g\\nmyFile.fasta, myFasta.fasta.gz"
    num_threads: "Number of threads (CPUs) to use in the BLAST search\\n(default=32)"
    output_file: "Output JSON file (default=Report)"
    loose_criteria: "The options are YES to include loose hits and NO to\\nexclude loose hits. (default=NO to exclude loose hits)"
    clean: "This removes temporary files in the results directory\\nafter run. Options are NO or YES (default=YES for\\nremove)"
    data: "Specify a data-type, i.e. wgs, chromosome, plasmid,\\netc. (default = NA)"
    verbose: "log progress to file. Options are OFF or ON (default =\\nOFF for no logging)"
    alignment_tool: "choose between BLAST and DIAMOND. Options are BLAST or\\nDIAMOND (default = BLAST)"
    db: "specify path to CARD blast databases (default: None)"
    software_version: "Prints software number"
    data_version: "Prints data version number"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}