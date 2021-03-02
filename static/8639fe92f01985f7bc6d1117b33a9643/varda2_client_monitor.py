from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Varda2_Client_Monitor_V0_1_0 = CommandToolBuilder(tool="varda2_client_monitor", base_command=["varda2-client", "monitor"], inputs=[ToolInput(tag="in_task_file", input_type=File(optional=True), prefix="--task-file", doc=InputDocumentation(doc="Filename of tasks to monitor\n"))], outputs=[], container="quay.io/biocontainers/varda2-client:0.9--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varda2_Client_Monitor_V0_1_0().translate("wdl")

