from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Tripaille_Job_Get_Jobs_V0_1_0 = CommandToolBuilder(tool="tripaille_job_get_jobs", base_command=["tripaille", "job", "get_jobs"], inputs=[ToolInput(tag="in_job_id", input_type=Int(optional=True), prefix="--job_id", doc=InputDocumentation(doc="job id"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Job_Get_Jobs_V0_1_0().translate("wdl", allow_empty_container=True)

