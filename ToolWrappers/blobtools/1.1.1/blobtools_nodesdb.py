from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Blobtools_Nodesdb_V0_1_0 = CommandToolBuilder(tool="blobtools_nodesdb", base_command=["blobtools", "nodesdb"], inputs=[ToolInput(tag="in_nodes", input_type=File(optional=True), prefix="--nodes", doc=InputDocumentation(doc="NCBI nodes.dmp file.")), ToolInput(tag="in_names", input_type=File(optional=True), prefix="--names", doc=InputDocumentation(doc="NCBI names.dmp file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blobtools_Nodesdb_V0_1_0().translate("wdl", allow_empty_container=True)

