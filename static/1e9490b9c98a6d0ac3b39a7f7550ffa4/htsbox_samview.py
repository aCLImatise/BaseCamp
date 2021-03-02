from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Htsbox_Samview_V0_1_0 = CommandToolBuilder(tool="htsbox_samview", base_command=["htsbox", "samview"], inputs=[ToolInput(tag="in_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_1", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_2", input_type=String(optional=True), prefix="-L", doc=InputDocumentation(doc="")), ToolInput(tag="in_bs_ipo", input_type=Boolean(optional=True), prefix="-bSIpO", doc=InputDocumentation(doc="")), ToolInput(tag="in_sam_view", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Samview_V0_1_0().translate("wdl", allow_empty_container=True)

