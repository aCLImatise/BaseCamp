from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pybel_Summarize_V0_1_0 = CommandToolBuilder(tool="pybel_summarize", base_command=["pybel", "summarize"], inputs=[ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pybel_Summarize_V0_1_0().translate("wdl", allow_empty_container=True)

