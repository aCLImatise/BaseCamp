from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Refgenieserver_Serve_V0_1_0 = CommandToolBuilder(tool="refgenieserver_serve", base_command=["refgenieserver", "serve"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="A path to the refgenie config file (YAML). If not\nprovided, the first available environment variable\namong: 'REFGENIE' will be used if set. Currently: not\nset")), ToolInput(tag="in_dbg", input_type=Boolean(optional=True), prefix="--dbg", doc=InputDocumentation(doc="Set logger verbosity to debug")), ToolInput(tag="in_port", input_type=String(optional=True), prefix="--port", doc=InputDocumentation(doc="The port the webserver should be run on."))], outputs=[], container="quay.io/biocontainers/refgenieserver:0.6.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenieserver_Serve_V0_1_0().translate("wdl")

