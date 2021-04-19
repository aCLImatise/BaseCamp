from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Histories_Get_Status_V0_1_0 = CommandToolBuilder(tool="parsec_histories_get_status", base_command=["parsec", "histories", "get_status"], inputs=[ToolInput(tag="in_completion_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Get_Status_V0_1_0().translate("wdl")

