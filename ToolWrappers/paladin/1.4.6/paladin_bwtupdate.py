from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Paladin_Bwtupdate_V0_1_0 = CommandToolBuilder(tool="paladin_bwtupdate", base_command=["paladin", "bwtupdate"], inputs=[ToolInput(tag="in_the_dot_bwt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paladin_Bwtupdate_V0_1_0().translate("wdl", allow_empty_container=True)

