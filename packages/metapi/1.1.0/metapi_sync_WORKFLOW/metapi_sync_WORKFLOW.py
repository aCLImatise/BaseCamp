from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Metapi_Sync_Workflow_V0_1_0 = CommandToolBuilder(tool="metapi_sync_WORKFLOW", base_command=["metapi", "sync", "WORKFLOW"], inputs=[ToolInput(tag="in_outdir", input_type=Boolean(optional=True), prefix="--outdir", doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="")), ToolInput(tag="in_config", input_type=String(optional=True), prefix="--config", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_met_api", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sync", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/metapi:1.1.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metapi_Sync_Workflow_V0_1_0().translate("wdl")

