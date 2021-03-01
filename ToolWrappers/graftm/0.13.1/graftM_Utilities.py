from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Graftm_Utilities_V0_1_0 = CommandToolBuilder(tool="graftM_Utilities", base_command=["graftM", "Utilities"], inputs=[ToolInput(tag="in_graft_m", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graftm_Utilities_V0_1_0().translate("wdl", allow_empty_container=True)

