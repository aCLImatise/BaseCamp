from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Optimir_Summarize_V0_1_0 = CommandToolBuilder(tool="optimir_summarize", base_command=["optimir", "summarize"], inputs=[ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="Full path of the directory containing results"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Optimir_Summarize_V0_1_0().translate("wdl", allow_empty_container=True)

