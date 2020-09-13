version 1.0

task Twopaco {
  input {
    File? _outfile_file
    Boolean? test
    Directory? tmpdir
    Int? _threads_integernumber
    Int? _rounds_integernumber
    Int? _hashfnumber_integernumber
    Int? _filtersize_integerrequired
    String? _kvalue_oddcvalue
    String two_paco
  }
  command <<<
    twopaco \
      ~{two_paco} \
      ~{if defined(_outfile_file) then ("-o " +  '"' + _outfile_file + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(_threads_integernumber) then ("-t " +  '"' + _threads_integernumber + '"') else ""} \
      ~{if defined(_rounds_integernumber) then ("-r " +  '"' + _rounds_integernumber + '"') else ""} \
      ~{if defined(_hashfnumber_integernumber) then ("-q " +  '"' + _hashfnumber_integernumber + '"') else ""} \
      ~{if defined(_filtersize_integerrequired) then ("-f " +  '"' + _filtersize_integerrequired + '"') else ""} \
      ~{if defined(_kvalue_oddcvalue) then ("-k " +  '"' + _kvalue_oddcvalue + '"') else ""}
  >>>
  parameter_meta {
    _outfile_file: ",  --outfile <file name>\\nOutput file name prefix"
    test: "Run tests"
    tmpdir: "Temporary directory name"
    _threads_integernumber: ",  --threads <integer>\\nNumber of worker threads"
    _rounds_integernumber: ",  --rounds <integer>\\nNumber of computation rounds"
    _hashfnumber_integernumber: ",  --hashfnumber <integer>\\nNumber of hash functions"
    _filtersize_integerrequired: ",  --filtersize <integer>\\n(required)  Size of the filter"
    _kvalue_oddcvalue: ",  --kvalue <oddc>\\nValue of k"
    two_paco: "[-o <file name>] [--test] [--tmpdir <directory name>] [-t\\n<integer>] [-r <integer>] [-q <integer>] -f <integer> [-k\\n<oddc>] [--] [--version] [-h] <fasta files with genomes> ..."
  }
  output {
    File out_stdout = stdout()
    File out__outfile_file = "${in__outfile_file}"
  }
}