from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dx_Notebook_Reconnect_V0_1_0 = CommandToolBuilder(tool="dx_notebook_reconnect", base_command=["dx-notebook-reconnect"], inputs=[ToolInput(tag="in_port", input_type=String(optional=True), prefix="--port", doc=InputDocumentation(doc="Local port to use for connecting.")), ToolInput(tag="in_job_id", input_type=String(), position=0, doc=InputDocumentation(doc="Job-id of the notebook job to reconnect to."))], outputs=[], container="quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Notebook_Reconnect_V0_1_0().translate("wdl")

