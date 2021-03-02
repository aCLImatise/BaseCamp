version 1.0

task ExistDB {
  input {
    Int? mer_size
    String? build
    File? describe
    String? test_files
    File? test_existence
    String? test_exhaustive
    String? stuff
  }
  command <<<
    existDB \
      ~{stuff} \
      ~{if defined(mer_size) then ("-mersize " +  '"' + mer_size + '"') else ""} \
      ~{if defined(build) then ("-build " +  '"' + build + '"') else ""} \
      ~{if defined(describe) then ("-describe " +  '"' + describe + '"') else ""} \
      ~{if defined(test_files) then ("-testfiles " +  '"' + test_files + '"') else ""} \
      ~{if defined(test_existence) then ("-testexistence " +  '"' + test_existence + '"') else ""} \
      ~{if defined(test_exhaustive) then ("-testexhaustive " +  '"' + test_exhaustive + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mer_size: "-- Use the specified mersize when building existDB tables."
    build: "prefix\\n-- Build an existDB on all mers in some.fasta and save\\nthe tables into prefix."
    describe: "-- Reports the state of some existDB file."
    test_files: "prefix\\n-- Build an existDB table from some.fasta.  Write that table to disk.\\nLoad the table back.  Compare that each mer in some.fasta is present\\nin all three existDB tables created earlier."
    test_existence: "-- Build an existDB table from some.fasta, check that every\\nmer in some.fasta can be found in the table.  Does not\\nguarantee that every mer in the table is found in the file."
    test_exhaustive: "some.meryl\\n-- Build an existDB table from some.fasta, check _EVERY_ mer\\nfor existance.  Complain if a mer exists in the table but\\nnot in the meryl database.  Assumes 'some.meryl' is the\\nmercount of some.fasta.\\n"
    stuff: ""
  }
  output {
    File out_stdout = stdout()
  }
}