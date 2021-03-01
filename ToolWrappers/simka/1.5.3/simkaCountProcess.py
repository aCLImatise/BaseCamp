from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Simkacountprocess_V0_1_0 = CommandToolBuilder(tool="simkaCountProcess", base_command=["simkaCountProcess"], inputs=[ToolInput(tag="in_nohup", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/simka:1.5.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simkacountprocess_V0_1_0().translate("wdl")

