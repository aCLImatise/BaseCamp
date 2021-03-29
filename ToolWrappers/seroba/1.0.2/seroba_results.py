from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Seroba_Results_V0_1_0 = CommandToolBuilder(tool="seroba_results", base_command=["seroba", "results"], inputs=[ToolInput(tag="in_se_rob_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seroba:1.0.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seroba_Results_V0_1_0().translate("wdl")

