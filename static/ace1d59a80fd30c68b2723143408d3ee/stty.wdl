version 1.0

task Stty {
  input {
    Boolean? all
    Boolean? save
    File? file
    Boolean? var_3
    Boolean? same_as_raw
    Boolean? var_5
    Boolean? var_6
    Boolean? same_icrnl_inlcr
    Boolean? var_8
    Boolean? pass_eight
    String speed
    String csn
    String var_12
    String same_brkint_ignpar
    String crt
    String dec
    String ek
    String var_17
    String var_18
    String same_icrnl_onlcr
    String var_20
  }
  command <<<
    stty \
      ~{speed} \
      ~{csn} \
      ~{var_12} \
      ~{same_brkint_ignpar} \
      ~{crt} \
      ~{dec} \
      ~{ek} \
      ~{var_17} \
      ~{var_18} \
      ~{same_icrnl_onlcr} \
      ~{var_20} \
      ~{if (all) then "--all" else ""} \
      ~{if (save) then "--save" else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if (var_3) then "-cbreak" else ""} \
      ~{if (same_as_raw) then "-cooked" else ""} \
      ~{if (var_5) then "-evenp" else ""} \
      ~{if (var_6) then "-litout" else ""} \
      ~{if (same_icrnl_inlcr) then "-nl" else ""} \
      ~{if (var_8) then "-oddp" else ""} \
      ~{if (pass_eight) then "-pass8" else ""}
  >>>
  parameter_meta {
    all: "print all current settings in human-readable form"
    save: "print all current settings in a stty-readable form"
    file: "open and use the specified DEVICE instead of stdin"
    var_3: "same as icanon"
    same_as_raw: "same as raw"
    var_5: "same as -parenb cs8"
    var_6: "same as parenb istrip opost cs7"
    same_icrnl_inlcr: "same as icrnl -inlcr -igncr onlcr -ocrnl -onlret"
    var_8: "same as -parenb cs8"
    pass_eight: "same as parenb istrip cs7\\nraw           same as -ignbrk -brkint -ignpar -parmrk -inpck -istrip\\n-inlcr -igncr -icrnl -ixon -ixoff -icanon -opost\\n-isig -iuclc -ixany -imaxbel -xcase min 1 time 0\\n-raw          same as cooked\\nsane          same as cread -ignbrk brkint -inlcr -igncr icrnl\\nicanon iexten echo echoe echok -echonl -noflsh\\n-ixoff -iutf8 -iuclc -ixany imaxbel -xcase -olcuc -ocrnl\\nopost -ofill onlcr -onocr -onlret nl0 cr0 tab0 bs0 vt0 ff0\\nisig -tostop -ofdel -echoprt echoctl echoke -flusho,\\nall special characters to their default values"
    speed: "print the terminal speed"
    csn: "set character size to N bits, N in [5..8]"
    var_12: "same as -icanon"
    same_brkint_ignpar: "same as brkint ignpar istrip icrnl ixon opost isig\\nicanon, eof and eol characters to their default values"
    crt: "same as echoe echoctl echoke"
    dec: "same as echoe echoctl echoke -ixany intr ^c erase 0177\\nkill ^u"
    ek: "erase and kill characters to their default values"
    var_17: "same as parenb -parodd cs7"
    var_18: "same as -parenb -istrip -opost cs8"
    same_icrnl_onlcr: "same as -icrnl -onlcr"
    var_20: "same as parenb parodd cs7"
  }
  output {
    File out_stdout = stdout()
  }
}