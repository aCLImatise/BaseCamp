from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Broad_Utils_Py_Get_Bustard_Dir_V0_1_0 = CommandToolBuilder(tool="broad_utils.py_get_bustard_dir", base_command=["broad_utils.py", "get_bustard_dir"], inputs=[ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: ERROR]\n")), ToolInput(tag="in_broad_utils_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_subcommand", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_get_bustard_dir", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Broad_Utils_Py_Get_Bustard_Dir_V0_1_0().translate("wdl", allow_empty_container=True)

