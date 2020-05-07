version 1.0

task FaFilter {
  input {
    String invertInvert
    String minsizeMinsize
    String maxsizeMaxsize
    String maxMaxN
    String removesRemoves
    Boolean iI
    String? inInFa
    String? outOutFa
  }
  command <<<
    faFilter \
      ~{inInFa} \
      ~{if defined(invertInvert) then ("- invert " +  '"' + invertInvert + '"') else ""} \
      ~{if defined(minsizeMinsize) then ("-minSize " +  '"' + minsizeMinsize + '"') else ""} \
      ~{if defined(maxsizeMaxsize) then ("-maxSize " +  '"' + maxsizeMaxsize + '"') else ""} \
      ~{if defined(maxMaxN) then ("-maxN " +  '"' + maxMaxN + '"') else ""} \
      ~{if defined(removesRemoves) then ("- Removes " +  '"' + removesRemoves + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{outOutFa}
  >>>
}