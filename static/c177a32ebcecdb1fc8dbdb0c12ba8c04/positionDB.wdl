version 1.0

task PositionDB {
  input {
    Int? mer_size
    Int? mer_skip
    String? use
    String? mer_begin
    String? mer_end
    String? sequence
    File? output_filename
    File? dump
    String? args
  }
  command <<<
    positionDB \
      ~{args} \
      ~{if defined(mer_size) then ("-mersize " +  '"' + mer_size + '"') else ""} \
      ~{if defined(mer_skip) then ("-merskip " +  '"' + mer_skip + '"') else ""} \
      ~{if defined(use) then ("-use " +  '"' + use + '"') else ""} \
      ~{if defined(mer_begin) then ("-merbegin " +  '"' + mer_begin + '"') else ""} \
      ~{if defined(mer_end) then ("-merend " +  '"' + mer_end + '"') else ""} \
      ~{if defined(sequence) then ("-sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(output_filename) then ("-output " +  '"' + output_filename + '"') else ""} \
      ~{if defined(dump) then ("-dump " +  '"' + dump + '"') else ""}
  >>>
  parameter_meta {
    mer_size: "The size of the mers, default=20."
    mer_skip: "The skip between mers, default=0"
    use: ",c         Specify which sequences to use, default=all"
    mer_begin: "Build on a subset of the mers, starting at mer #b, default=all mers"
    mer_end: "Build on a subset of the mers, ending at mer #e, default=all mers"
    sequence: "Input sequences."
    output_filename: "Output filename."
    dump: "To run sanity tests:\\n-buildonly [build opts] sequence.fasta\\n--  just builds a table and exits\\n-existence [build opts] sequence.fasta\\n--  builds (or reads) a table reports if any mers\\nin sequence.fasta cannot be found\\n-extra [build opts] sequence.fasta\\n--  builds (or reads) a table reports if any mers\\nNOT in sequence.fasta are be found\\n-test1 sequence.fasta\\n--  Tests if each and every mer is found in the\\npositionDB.  Reports if it doesn't find a mer\\nat the correct position.  Doesn't report if table\\nhas too much stuff.\\n-test2 db.fasta sequence.fasta\\n--  Builds a positionDB from db.fasta, then searches\\nthe table for each mer in sequence.fasta.  Reports\\nall mers it finds.\\n-- This is a silly test and you shouldn't do it.\\n"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}