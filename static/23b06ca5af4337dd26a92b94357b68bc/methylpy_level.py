from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Methylpy_Level_V0_1_0 = CommandToolBuilder(tool="methylpy_level", base_command=["methylpy", "level"], inputs=[ToolInput(tag="in_methyl_py", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Methylpy_Level_V0_1_0().translate("wdl", allow_empty_container=True)

