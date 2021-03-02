from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Stacks_Summary_Py_V0_1_0 = CommandToolBuilder(tool="stacks_summary.py", base_command=["stacks_summary.py"], inputs=[ToolInput(tag="in_res_dir", input_type=String(optional=True), prefix="--res-dir", doc=InputDocumentation(doc="[--logfile LOGFILE]")), ToolInput(tag="in_stacks_prog", input_type=Boolean(optional=True), prefix="--stacks-prog", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stacks_Summary_Py_V0_1_0().translate("wdl", allow_empty_container=True)

