from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Domino_Disabled_V0_1_0 = CommandToolBuilder(tool="domino_disabled", base_command=["domino", "disabled"], inputs=[ToolInput(tag="in_hone_one_three_three_app", input_type=Int(), position=0, doc=InputDocumentation(doc="HD66EA44")), ToolInput(tag="in_kdl_leg_jj", input_type=String(), position=1, doc=InputDocumentation(doc="KNN77G88")), ToolInput(tag="in_zero_zero_bb_five_five_mm", input_type=Int(), position=2, doc=InputDocumentation(doc="OO299RRC")), ToolInput(tag="in_ff_two_qq_iic", input_type=Int(), position=3, doc=InputDocumentation(doc="Initial"))], outputs=[], container="quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Domino_Disabled_V0_1_0().translate("wdl")

