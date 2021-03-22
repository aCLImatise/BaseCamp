from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mapula_Command_V0_1_0 = CommandToolBuilder(tool="mapula_command", base_command=["mapula", "command"], inputs=[ToolInput(tag="in_count", input_type=String(), position=0, doc=InputDocumentation(doc="Count mapping stats from a SAM/BAM file")), ToolInput(tag="in_merge", input_type=String(), position=1, doc=InputDocumentation(doc="Combine mapula count's aggregated json outputs")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="Subcommand to run"))], outputs=[], container="quay.io/biocontainers/mapula:2.1.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapula_Command_V0_1_0().translate("wdl")

