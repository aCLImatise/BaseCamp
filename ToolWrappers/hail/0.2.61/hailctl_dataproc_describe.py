from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hailctl_Dataproc_Describe_V0_1_0 = CommandToolBuilder(tool="hailctl_dataproc_describe", base_command=["hailctl", "dataproc", "describe"], inputs=[ToolInput(tag="in_requester_pays_project_id", input_type=String(optional=True), prefix="--requester-pays-project-id", doc=InputDocumentation(doc="Project to be billed for GCS requests.\n"))], outputs=[], container="quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Dataproc_Describe_V0_1_0().translate("wdl")

