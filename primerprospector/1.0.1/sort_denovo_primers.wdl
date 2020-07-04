version 1.0

task SortDenovoPrimers.py {
  input {
    String? hits_file
  }
  command <<<
    sort_denovo_primers.py \
      ~{if defined(hits_file) then ("--hits_file " +  '"' + hits_file + '"') else ""}
  >>>
  parameter_meta {
    hits_file: "Conserved Xmers file, output file from generate_primers_denovo.py module. [REQUIRED]"
  }
}