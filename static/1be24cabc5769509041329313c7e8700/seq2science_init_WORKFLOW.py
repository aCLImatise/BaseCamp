from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Seq2Science_Init_Workflow_V0_1_0 = CommandToolBuilder(tool="seq2science_init_WORKFLOW", base_command=["seq2science", "init", "WORKFLOW"], inputs=[ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seq2science:0.5.0--pypy_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq2Science_Init_Workflow_V0_1_0().translate("wdl")

