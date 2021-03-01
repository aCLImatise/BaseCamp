from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tripaille_Job_Wait_V0_1_0 = CommandToolBuilder(tool="tripaille_job_wait", base_command=["tripaille", "job", "wait"], inputs=[ToolInput(tag="in_job_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Job_Wait_V0_1_0().translate("wdl", allow_empty_container=True)

