from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Paladin_Pac2Bwt_V0_1_0 = CommandToolBuilder(tool="paladin_pac2bwt", base_command=["paladin", "pac2bwt"], inputs=[ToolInput(tag="in_in_dot_pac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_bwt", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paladin_Pac2Bwt_V0_1_0().translate("wdl", allow_empty_container=True)

