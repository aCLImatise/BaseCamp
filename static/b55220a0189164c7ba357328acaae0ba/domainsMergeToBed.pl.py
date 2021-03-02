from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Domainsmergetobed_Pl_V0_1_0 = CommandToolBuilder(tool="domainsMergeToBed.pl", base_command=["domainsMergeToBed.pl"], inputs=[ToolInput(tag="in_width_bin_default", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="BIN_WIDTH\nThe width of the bin.  Default is 1000bp.")), ToolInput(tag="in_minposteriortoss_parts_minposterior", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="MIN_POSTERIOR\nToss out parts of domains that have posterior values that are less\nthan MIN_POSTERIOR. You can set this to any value you want, but for\nreference, domainsToBed bins according the following scale:\n>= 0.9\n0.9 > posterior >= 0.8\n0.8 > posterior >= 0.7\n0.7 > posterior >= min posterior for significance\nThe default value is 0; everything is merged by default.")), ToolInput(tag="in_chrominfotxtif_you_get", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="ChromInfo.txt\nIf you get an out of bounds error when uploading a bed file to the UCSC\ngenome browser, you can use this option to trim the bounds to the size of\nthe chromosomes.\nChromInfo.txt should be a tab delimited file with the chromosome names\nin the first column and their sizes in the second column.  Here is an\nexample ChromInfo.txt file for a genome with 3 chromosomes:\nchr1    197195432\nchr2    181748087\nchr3    159599783")), ToolInput(tag="in_create_a_trackline", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Create a trackline.")), ToolInput(tag="in_tracknamethe_name_you", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="TRACK_NAME\nThe name you want to give your track. The default is to use the name of\nthe domainFile (without the .txt suffix)\n")), ToolInput(tag="in_domain_file_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Domainsmergetobed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

