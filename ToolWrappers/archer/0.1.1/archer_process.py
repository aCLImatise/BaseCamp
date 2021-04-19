from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Archer_Process_V0_1_0 = CommandToolBuilder(tool="archer_process", base_command=["archer", "process"], inputs=[ToolInput(tag="in_gr_pc_address", input_type=String(optional=True), prefix="--grpcAddress", doc=InputDocumentation(doc="address of the server hosting the Archer service (default 'localhost')")), ToolInput(tag="in_gr_pc_port", input_type=Int(optional=True), prefix="--grpcPort", doc=InputDocumentation(doc="TCP port to listen to by the gRPC server (default '9090')"))], outputs=[], container="quay.io/biocontainers/archer:0.1.1--he881be0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Archer_Process_V0_1_0().translate("wdl")

