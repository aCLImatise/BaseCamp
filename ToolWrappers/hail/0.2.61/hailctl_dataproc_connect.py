from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Hailctl_Dataproc_Connect_V0_1_0 = CommandToolBuilder(tool="hailctl_dataproc_connect", base_command=["hailctl", "dataproc", "connect"], inputs=[ToolInput(tag="in_project", input_type=String(optional=True), prefix="--project", doc=InputDocumentation(doc="Google Cloud project for the cluster (defaults to\ncurrently set project).")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="--port", doc=InputDocumentation(doc="Local port to use for SSH tunnel to leader (master)\nnode (default: 10000).")), ToolInput(tag="in_zone", input_type=String(optional=True), prefix="--zone", doc=InputDocumentation(doc="Compute zone for Dataproc cluster.")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Print gcloud dataproc command, but don't run it."))], outputs=[], container="quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Dataproc_Connect_V0_1_0().translate("wdl")

