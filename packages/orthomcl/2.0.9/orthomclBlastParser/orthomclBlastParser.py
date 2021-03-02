from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Orthomclblastparser_V0_1_0 = CommandToolBuilder(tool="orthomclBlastParser", base_command=["orthomclBlastParser"], inputs=[ToolInput(tag="in_orthomcl_adjust_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="m8 format has these columns:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orthomclblastparser_V0_1_0().translate("wdl", allow_empty_container=True)

