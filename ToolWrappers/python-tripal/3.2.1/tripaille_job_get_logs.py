from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tripaille_Job_Get_Logs_V0_1_0 = CommandToolBuilder(tool="tripaille_job_get_logs", base_command=["tripaille", "job", "get_logs"], inputs=[ToolInput(tag="in_stdout", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_stderr", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Job_Get_Logs_V0_1_0().translate("wdl", allow_empty_container=True)

