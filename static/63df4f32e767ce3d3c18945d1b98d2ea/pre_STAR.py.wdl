version 1.0

task PreSTARpy {
  input {
    File? list
    File? an_no
    File? intersect_bed
    File? outdir
  }
  command <<<
    pre_STAR_py \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(intersect_bed) then ("--intersectBed " +  '"' + intersect_bed + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list: "sampleName tab-delimiter path/to/fileName"
    an_no: "specifies the path to the annotation (bed 6 file of\\ngenebounderies with info\\nprotein_coding;ENSG00000237683.5;AL627309.1 in column\\nfour.)"
    intersect_bed: "specifies the path to the intersectBed binary"
    outdir: "specifies the path to ouput directory (tmp files are\\nalso created in this directory, they are removed by rm\\n*.rm) (default is '.')\\n"
  }
  output {
    File out_stdout = stdout()
  }
}