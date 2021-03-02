from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bedparse_Promoter_Bedfile_V0_1_0 = CommandToolBuilder(tool="bedparse_promoter_bedfile", base_command=["bedparse", "promoter", "bedfile"], inputs=[ToolInput(tag="in_un_stranded", input_type=Boolean(optional=True), prefix="--unstranded", doc=InputDocumentation(doc="")), ToolInput(tag="in_down", input_type=String(optional=True), prefix="--down", doc=InputDocumentation(doc="")), ToolInput(tag="in_up", input_type=String(optional=True), prefix="--up", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedparse_Promoter_Bedfile_V0_1_0().translate("wdl", allow_empty_container=True)

