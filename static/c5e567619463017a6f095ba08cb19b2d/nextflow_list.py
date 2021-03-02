from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nextflow_List_V0_1_0 = CommandToolBuilder(tool="nextflow_list", base_command=["nextflow", "list"], inputs=[ToolInput(tag="in_list", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nextflow:20.10.0--hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_List_V0_1_0().translate("wdl")

