version 1.0

task AgeAlign {
  input {
    String age_align
  }
  command <<<
    age_align \
      ~{age_align}
  >>>
  parameter_meta {
    age_align: "[-version] [-indel|-tdup|-inv|-invl|-invr] [-match=value:1] [-mismatch=value:-2] [-go=value:-2] [-ge=value:-1] [-both] [-revcom1] [-revcom2] [-coor1=start-end] [-coor2=start-end] file1.fa file2.fa"
  }
}