from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Lyner_Transform_V0_1_0 = CommandToolBuilder(tool="lyner_transform", base_command=["lyner", "transform"], inputs=[ToolInput(tag="in_log_two_vertical_line_log_one_zero_vertical_line_log_vertical_line_exp_vertical_line_logo_nep_vertical_line_ex_pm_one_vertical_line_transpose", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Transform_V0_1_0().translate("wdl", allow_empty_container=True)

