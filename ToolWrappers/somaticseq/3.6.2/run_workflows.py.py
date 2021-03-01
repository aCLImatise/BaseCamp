from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Run_Workflows_Py_V0_1_0 = CommandToolBuilder(tool="run_workflows.py", base_command=["run_workflows.py"], inputs=[ToolInput(tag="in_threads", input_type=String(optional=True), prefix="--threads", doc=InputDocumentation(doc="[PARTITION_NUMBERING [PARTITION_NUMBERING ...]], --partition-numbering [PARTITION_NUMBERING [PARTITION_NUMBERING ...]]"))], outputs=[], container="quay.io/biocontainers/somaticseq:3.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Workflows_Py_V0_1_0().translate("wdl")

