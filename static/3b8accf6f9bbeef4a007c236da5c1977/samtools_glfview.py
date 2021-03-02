from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Samtools_Glfview_V0_1_0 = CommandToolBuilder(tool="samtools_glfview", base_command=["samtools", "glfview"], inputs=[ToolInput(tag="in_glf_view", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_glf", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Glfview_V0_1_0().translate("wdl", allow_empty_container=True)

