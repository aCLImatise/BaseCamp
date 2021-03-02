from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Start_Asap_V0_1_0 = CommandToolBuilder(tool="start_asap", base_command=["start-asap"], inputs=[ToolInput(tag="in_subdirectory_dot", input_type=String(), position=0, doc=InputDocumentation(doc="*-ft*, *--for-tag* STRING"))], outputs=[], container="quay.io/biocontainers/start-asap:1.2.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Start_Asap_V0_1_0().translate("wdl")

