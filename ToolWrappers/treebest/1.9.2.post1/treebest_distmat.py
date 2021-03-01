from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Treebest_Distmat_V0_1_0 = CommandToolBuilder(tool="treebest_distmat", base_command=["treebest", "distmat"], inputs=[ToolInput(tag="in_dn_vertical_line_ds_vertical_line_dm_vertical_line_jtt_vertical_line_kimura_vertical_line_mm_vertical_line_dns", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Distmat_V0_1_0().translate("wdl", allow_empty_container=True)

