version 1.0

task Mugsy {
  input {
    Boolean? prefix_prefix_output
    File? directory
    Boolean? distance
    Int? minlength
    Int? duplications
    Int? nuc_mer_opts
    String? allow_nested_l_cbs_dot
    String? plot
    Int? full_search
    File? refine
    Boolean? debug
  }
  command <<<
    mugsy \
      ~{if (prefix_prefix_output) then "-p" else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if (distance) then "--distance" else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(duplications) then ("-duplications " +  '"' + duplications + '"') else ""} \
      ~{if defined(nuc_mer_opts) then ("-nucmeropts " +  '"' + nuc_mer_opts + '"') else ""} \
      ~{if defined(allow_nested_l_cbs_dot) then ("-allownestedlcbs. " +  '"' + allow_nested_l_cbs_dot + '"') else ""} \
      ~{if defined(plot) then ("-plot " +  '"' + plot + '"') else ""} \
      ~{if defined(full_search) then ("-fullsearch " +  '"' + full_search + '"') else ""} \
      ~{if defined(refine) then ("-refine " +  '"' + refine + '"') else ""} \
      ~{if (debug) then "-debug" else ""}
  >>>
  parameter_meta {
    prefix_prefix_output: "|prefix       prefix for output files"
    directory: "used to store output and temporary\\nfiles. Must be a absolute path"
    distance: "maximum distance along a single sequence (bp) for\\nchaining anchors into locally colinear blocks (LCBs).  This is\\nused by the segmentation step synchain-mugsy. Default is 1000bp."
    minlength: "span of an aligned region in a colinear\\nblock (bp). This is used by the segmentation step\\nsynchain-mugsy. Default is 30bp."
    duplications: "- Detect and report duplications. 0 - Skip. Default is 0."
    nuc_mer_opts: "passed through to the Nucmer\\npackage. Eg. -nucmeropts \\\"-l 15\\\" sets the minimum MUM length in\\nNUCmer to 15. See the Nucmer documentation at\\nhttp://mummer.sf.net for more information.  Default is -l 15."
    allow_nested_l_cbs_dot: "=false. Places each multi-genome anchor\\nin exactly one LCB; the longest spanning LCB"
    plot: "genome dot plots in GNUplot format. Overlays LCBS\\nonto pairwise plots from mummerplot. Display of draft genomes in\\nthese plots is not supported."
    full_search: "a complete all pairs Nucmer search with each\\nsequence as a reference and query (n^2-1 total searches). Default\\nis one direction only (n^2-1/2 searches)."
    refine: "an second iteration of Mugsy on each LCB to refine the\\nalignment using either Mugsy (--refine mugsy), FSA (--refine\\nfsa), Pecan (--refine pecan), MLAGAN (--refine mlagan). Requires\\nnecessary tools are in your path:\\nfsa: fsa\\npecan: muscle,exonerate, in the path. classpath set for bp.pecan.Pecan.\\nmlagan: mlagan.sh"
    debug: "debug level. > 2 verbose"
  }
  output {
    File out_stdout = stdout()
    File out_directory = "${in_directory}"
  }
}