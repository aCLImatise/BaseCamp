from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ragtag_Stats_Py_V0_1_0 = CommandToolBuilder(tool="ragtag_stats.py", base_command=["ragtag_stats.py"], inputs=[ToolInput(tag="in_ragtag_dot_scaffolds_dot_agp", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ragtag_dot_confidence_dot_txt", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ragtag:1.1.1--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ragtag_Stats_Py_V0_1_0().translate("wdl")

