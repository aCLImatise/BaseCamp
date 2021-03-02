from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pathogist_Visualize_Format_V0_1_0 = CommandToolBuilder(tool="PATHOGIST_visualize_format", base_command=["PATHOGIST", "visualize", "format"], inputs=[ToolInput(tag="in_pathog_ist", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_visualize", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pathogist_Visualize_Format_V0_1_0().translate("wdl", allow_empty_container=True)

