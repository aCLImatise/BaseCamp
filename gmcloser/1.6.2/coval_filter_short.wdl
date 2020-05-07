version 1.0

task CovalFilterShort.pl {
  input {
    String refRef
    String prefPref
    String numNum
    String mMRate
  }
  command <<<
    coval-filter-short.pl \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(prefPref) then ("--pref " +  '"' + prefPref + '"') else ""} \
      ~{if defined(numNum) then ("--num " +  '"' + numNum + '"') else ""} \
      ~{if defined(mMRate) then ("--mrate " +  '"' + mMRate + '"') else ""}
  >>>
}