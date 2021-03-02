from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bedparse_Convertchr_Bedfile_V0_1_0 = CommandToolBuilder(tool="bedparse_convertChr_bedfile", base_command=["bedparse", "convertChr", "bedfile"], inputs=[ToolInput(tag="in_target", input_type=String(optional=True), prefix="--target", doc=InputDocumentation(doc="")), ToolInput(tag="in_assembly", input_type=String(optional=True), prefix="--assembly", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_parse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_convert_chr", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedparse_Convertchr_Bedfile_V0_1_0().translate("wdl", allow_empty_container=True)

