from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hailctl_Dataproc_Stop_V0_1_0 = CommandToolBuilder(tool="hailctl_dataproc_stop", base_command=["hailctl", "dataproc", "stop"], inputs=[ToolInput(tag="in_async", input_type=Boolean(optional=True), prefix="--async", doc=InputDocumentation(doc="Do not wait for cluster deletion.")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Print gcloud dataproc command, but don't run it.")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="Cluster name."))], outputs=[], container="quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Dataproc_Stop_V0_1_0().translate("wdl")

