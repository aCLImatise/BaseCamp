version 1.0

task Distruct.py {
  input {
    Int? number_of_populations
    File? pathtoinputfile_same_passed
    File? pathtooutputfile
    File? popfile
    String? title
    String python
  }
  command <<<
    distruct.py \
      ~{python} \
      ~{if defined(number_of_populations) then ("-K " +  '"' + number_of_populations + '"') else ""} \
      ~{if defined(pathtoinputfile_same_passed) then ("--input " +  '"' + pathtoinputfile_same_passed + '"') else ""} \
      ~{if defined(pathtooutputfile) then ("--output " +  '"' + pathtooutputfile + '"') else ""} \
      ~{if defined(popfile) then ("--popfile " +  '"' + popfile + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""}
  >>>
  parameter_meta {
    number_of_populations: "(number of populations)"
    pathtoinputfile_same_passed: "(/path/to/input/file; same as output flag passed to structure.py)"
    pathtooutputfile: "(/path/to/output/file)"
    popfile: "(file with known categorical labels; optional)"
    title: "(a title for the figure; optional)"
    python: ""
  }
}