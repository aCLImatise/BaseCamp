version 1.0

task PATHOGISTDistance {
  input {
    String? bed
  }
  command <<<
    PATHOGIST distance \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""}
  >>>
  parameter_meta {
    bed: "bed file of unwanted SNP positions in the genome"
  }
}