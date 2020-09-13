version 1.0

task AgatSpComplementAnnotationspl {
  input {
    File? ref
    File? add
    Int? size_min
    Int? outfile
    String agat_sp_complement_annotations_do_tpl
  }
  command <<<
    agat_sp_complement_annotations_pl \
      ~{agat_sp_complement_annotations_do_tpl} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(add) then ("--add " +  '"' + add + '"') else ""} \
      ~{if defined(size_min) then ("--size_min " +  '"' + size_min + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    ref: "Input GTF/GFF file used as reference."
    add: "Annotation(s) file you would like to use to complement the\\nreference annotation. You can specify as much file you want like\\nso: -a addfile1 -a addfile2 -a addfile3 /!\\ The order you\\nprovide these files matter. Once the reference file has been\\ncomplemented by file1, this new annotation becomes the new\\nreference that will be complemented by file2 etc. /!\\ The result\\nwith -a addfile1 -a addfile2 will differ to the result from -a\\naddfile2 -a addfile1. So, be aware of what you want if you use\\nseveral addfiles."
    size_min: "Option to keep the non-overlping gene only if the CDS size (in\\nnucleotide) is over the minimum size defined. Default = 0 that\\nmeans all of them are kept."
    outfile: "Output gff3 containing the reference annotation with all the\\nnon-overlapping newly added genes from addfiles.gff."
    agat_sp_complement_annotations_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
  }
}