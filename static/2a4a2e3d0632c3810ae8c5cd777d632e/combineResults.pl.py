from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Combineresults_Pl_V0_1_0 = CommandToolBuilder(tool="combineResults.pl", base_command=["combineResults.pl"], inputs=[ToolInput(tag="in_x_ann_dot_groups", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_x_ann_dot_assembled", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_x_dot_final", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_ploidy", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_acf", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_cn_state", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combineresults_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

