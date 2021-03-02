from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tripaille_Job_Run_Jobs_V0_1_0 = CommandToolBuilder(tool="tripaille_job_run_jobs", base_command=["tripaille", "job", "run_jobs"], inputs=[ToolInput(tag="in_wait", input_type=Boolean(optional=True), prefix="--wait", doc=InputDocumentation(doc="Wait for job completion  [default: True]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Job_Run_Jobs_V0_1_0().translate("wdl", allow_empty_container=True)

