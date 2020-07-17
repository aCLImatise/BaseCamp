version 1.0

task AgatSpComplementAnnotations.pl {
  input {
    String? ref
    String? add
    String? size_min
    String? outfile
  }
  command <<<
    agat_sp_complement_annotations.pl \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(add) then ("--add " +  '"' + add + '"') else ""} \
      ~{if defined(size_min) then ("--size_min " +  '"' + size_min + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    ref: "Input GTF/GFF file used as reference."
    add: "Annotation(s) file you would like to use to complement the reference annotation. You can specify as much file you want like so: -a addfile1 -a addfile2 -a addfile3 /!\ The order you provide these files matter. Once the reference file has been complemented by file1, this new annotation becomes the new reference that will be complemented by file2 etc. /!\ The result with -a addfile1 -a addfile2 will differ to the result from -a addfile2 -a addfile1. So, be aware of what you want if you use several addfiles."
    size_min: "Option to keep the non-overlping gene only if the CDS size (in nucleotide) is over the minimum size defined. Default = 0 that means all of them are kept."
    outfile: "Output gff3 containing the reference annotation with all the non-overlapping newly added genes from addfiles.gff."
  }
}