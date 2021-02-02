version 1.0

task PreStdpy {
  input {
    File? list
    File? an_no
    File? outdir
  }
  command <<<
    pre_std_py \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    list: "sampleName tab-delimiter path/to/fileName"
    an_no: "specifies the path to the annotation (bed 6 file of\\ngenebounderies with info\\nprotein_coding;ENSG00000237683.5;AL627309.1 in column\\nfour.)"
    outdir: "specifies the path to ouput directory (temp files are\\nalso created in this directory, they are removed by rm\\n*.rm) (default is '.')\\n"
  }
  output {
    File out_stdout = stdout()
  }
}