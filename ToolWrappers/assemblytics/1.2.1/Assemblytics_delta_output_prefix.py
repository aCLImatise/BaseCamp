from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Assemblytics_Delta_Output_Prefix_V0_1_0 = CommandToolBuilder(tool="Assemblytics_delta_output_prefix", base_command=["Assemblytics", "delta", "output_prefix"], inputs=[ToolInput(tag="in_unique_length_required", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_min_size", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_max_size", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/assemblytics:1.2.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assemblytics_Delta_Output_Prefix_V0_1_0().translate("wdl")

