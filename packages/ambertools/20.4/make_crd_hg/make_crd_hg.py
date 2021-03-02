from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Make_Crd_Hg_V0_1_0 = CommandToolBuilder(tool="make_crd_hg", base_command=["make_crd_hg"], inputs=[ToolInput(tag="in_make_crg_hg", input_type=String(), position=0, doc=InputDocumentation(doc="usage: make_crd_hg <  trajectory_file ")), ToolInput(tag="in_unit", input_type=String(), position=1, doc=InputDocumentation(doc="10 Error on OPEN: make_crd.in"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Crd_Hg_V0_1_0().translate("wdl", allow_empty_container=True)

