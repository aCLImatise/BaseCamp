from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Assemblepairs_Py_Assemble_Fail_V0_1_0 = CommandToolBuilder(tool="AssemblePairs.py_assemble_fail", base_command=["AssemblePairs.py", "assemble-fail"], inputs=[ToolInput(tag="in_assemble_pairs_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assemblepairs_Py_Assemble_Fail_V0_1_0().translate("wdl", allow_empty_container=True)

