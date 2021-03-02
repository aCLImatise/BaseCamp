from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Mb_Bsfinder_Inputfile_V0_1_0 = CommandToolBuilder(tool="mb_bsfinder_inputfile", base_command=["mb-bsfinder", "inputfile"], inputs=[ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--mincov", doc=InputDocumentation(doc="")), ToolInput(tag="in_threshold", input_type=String(optional=True), prefix="--threshold", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_bs_finder", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Bsfinder_Inputfile_V0_1_0().translate("wdl", allow_empty_container=True)

