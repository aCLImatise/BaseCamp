version 1.0

task PreStd.py {
  input {
    String? list
    String? an_no
    String? outdir
  }
  command <<<
    pre_std.py \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    list: "sampleName tab-delimiter path/to/fileName"
    an_no: "specifies the path to the annotation (bed 6 file of genebounderies with info protein_coding;ENSG00000237683.5;AL627309.1 in column four.)"
    outdir: "specifies the path to ouput directory (temp files are also created in this directory, they are removed by rm *.rm) (default is '.')"
  }
}