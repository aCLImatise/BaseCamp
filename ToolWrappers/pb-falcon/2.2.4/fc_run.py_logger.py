from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fc_Run_Py_Logger_V0_1_0 = CommandToolBuilder(tool="fc_run.py_logger", base_command=["fc_run.py", "logger"], inputs=[ToolInput(tag="in_fc_run_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_config", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_logger", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Run_Py_Logger_V0_1_0().translate("wdl", allow_empty_container=True)

