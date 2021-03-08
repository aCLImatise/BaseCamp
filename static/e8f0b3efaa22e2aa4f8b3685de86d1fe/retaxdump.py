from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Retaxdump_V0_1_0 = CommandToolBuilder(tool="retaxdump", base_command=["retaxdump"], inputs=[ToolInput(tag="in_nodes_path", input_type=File(optional=True), prefix="--nodespath", doc=InputDocumentation(doc="path for the nodes information files (nodes.dmp and\nnames.dmp from NCBI)")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/recentrifuge:1.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Retaxdump_V0_1_0().translate("wdl")

