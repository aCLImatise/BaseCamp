from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Rapidnorm_Sh_V0_1_0 = CommandToolBuilder(tool="rapidNorm.sh", base_command=["rapidNorm.sh"], inputs=[ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="/ : the config file that defines which rapidStats analysis folders should be used")), ToolInput(tag="in_an_not", input_type=File(optional=True), prefix="--annot", doc=InputDocumentation(doc=": bed file with regions that should be used for the comparison")), ToolInput(tag="in_de_seq", input_type=Int(optional=True), prefix="--deseq", doc=InputDocumentation(doc=": Use only TRUE or FALSE. Set this to TRUE, if you wish to use DESeq2 based normalization. Default is FALSE.")), ToolInput(tag="in_rapid", input_type=File(optional=True), prefix="--rapid", doc=InputDocumentation(doc="/ : set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/) or put into PATH variable")), ToolInput(tag="in_restrict_length", input_type=Int(optional=True), prefix="--restrictlength", doc=InputDocumentation(doc=": Read Lengths to be considered. If not provided, all reads will be used. (Multiple read lengths should be separated by commas)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rapidnorm_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

