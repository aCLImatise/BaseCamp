version 1.0

task RnazRandomizeAln.pl {
  input {
    String? slide
    String? level
    Boolean? man
    File? file
  }
  command <<<
    rnazRandomizeAln.pl \
      ~{file} \
      ~{if defined(slide) then ("--slide " +  '"' + slide + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    slide: "Long alignment blocks should be shuffled locally in order to maintain local characteristics of the alignment. Therefore alignments can be shuffled in windows. You can specify here the size of a window and the offset. Defaults are window=120 and slide=120, i.e. the alignments are shuffled in non-overlapping windows of 120 columns."
    level: "The shuffling algorithm tries to mantain local conservation patterns, i.e. it shuffles only columns of the same degree of conservation. This becomes limiting if you have many sequences in your alignment. Therfore you can choose the level of ``coarse graining\" with this option. To decide which columns have the same degree of conservation, the mean pairwise identity (MPI) of each column is calculated and finally only columns of the same value are shuffled. You can adjust the rounding of the MPI and thus the ``coarse graining\" level with this option. If you have two columns with say 0.52 and 0.48 MPI you get: level 0: 1 and 0 level 1: 50 and 50 level 2: 52 and 48 So on level 0 you only have ``conserved\" (MPI > 0.5) and ``non-conserved\" (MPI < 0.5) columns while on level 2 you need almost exactly the same MPI to shuffle two columns. Default value is 2."
    man: "Prints the manual page and exits."
    file: ""
  }
}