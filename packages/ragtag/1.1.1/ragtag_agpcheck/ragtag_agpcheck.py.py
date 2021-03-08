from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Ragtag_Agpcheck_Py_V0_1_0 = CommandToolBuilder(tool="ragtag_agpcheck.py", base_command=["ragtag_agpcheck.py"], inputs=[ToolInput(tag="in_ragtag_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_agp_check", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_asm_one_dot_agp", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_as_mndot_agp", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ragtag:1.1.1--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ragtag_Agpcheck_Py_V0_1_0().translate("wdl")

