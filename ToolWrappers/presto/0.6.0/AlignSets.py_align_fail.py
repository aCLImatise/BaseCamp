from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Alignsets_Py_Align_Fail_V0_1_0 = CommandToolBuilder(tool="AlignSets.py_align_fail", base_command=["AlignSets.py", "align-fail"], inputs=[ToolInput(tag="in_align_sets_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alignsets_Py_Align_Fail_V0_1_0().translate("wdl", allow_empty_container=True)

