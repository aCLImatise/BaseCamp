from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Funnel_Completion_V0_1_0 = CommandToolBuilder(tool="funnel_completion", base_command=["funnel", "completion"], inputs=[ToolInput(tag="in_bash", input_type=String(), position=0, doc=InputDocumentation(doc="Generate bash completion code"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funnel_Completion_V0_1_0().translate("wdl", allow_empty_container=True)

