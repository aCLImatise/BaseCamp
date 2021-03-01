from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Hailctl_Dataproc_Describe_V0_1_0 = CommandToolBuilder(tool="hailctl_dataproc_describe", base_command=["hailctl", "dataproc", "describe"], inputs=[ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Path to hail file (either MatrixTable or Table)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Dataproc_Describe_V0_1_0().translate("wdl", allow_empty_container=True)

