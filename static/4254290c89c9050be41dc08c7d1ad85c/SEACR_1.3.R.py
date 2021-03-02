from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Seacr_1_3_R_V0_1_0 = CommandToolBuilder(tool="SEACR_1.3.R", base_command=["SEACR_1.3.R"], inputs=[ToolInput(tag="in_exp", input_type=String(optional=True), prefix="--exp", doc=InputDocumentation(doc="- Input AUC values from experiment CUT&RUN")), ToolInput(tag="in_ctrl", input_type=String(optional=True), prefix="--ctrl", doc=InputDocumentation(doc="- Input AUC values from control CUT&RUN")), ToolInput(tag="in_norm", input_type=Boolean(optional=True), prefix="--norm", doc=InputDocumentation(doc="=[yes|no]     - Whether to normalize control and experimental files")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="- Output prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seacr_1_3_R_V0_1_0().translate("wdl", allow_empty_container=True)

