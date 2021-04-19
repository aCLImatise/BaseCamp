from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Metagraph_Server_Query_V0_1_0 = CommandToolBuilder(tool="metagraph_server_query", base_command=["metagraph", "server_query"], inputs=[ToolInput(tag="in_port", input_type=Boolean(optional=True), prefix="--port", doc=InputDocumentation(doc="[INT]         TCP port for incoming connections [5555]")), ToolInput(tag="in_address", input_type=Boolean(optional=True), prefix="--address", doc=InputDocumentation(doc="interface for incoming connections (default: all)")), ToolInput(tag="in_sparse", input_type=Boolean(optional=True), prefix="--sparse", doc=InputDocumentation(doc="use the row-major sparse matrix to annotate graph [off]")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="[INT]     maximum number of parallel connections [1]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="switch on verbose output [off]")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagraph_Server_Query_V0_1_0().translate("wdl")

