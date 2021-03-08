from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ragtag_Delta2Paf_Py_V0_1_0 = CommandToolBuilder(tool="ragtag_delta2paf.py", base_command=["ragtag_delta2paf.py"], inputs=[ToolInput(tag="in_a_lns_dot_delta", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ragtag:1.1.1--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ragtag_Delta2Paf_Py_V0_1_0().translate("wdl")

