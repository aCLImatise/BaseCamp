from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Pyqi_Serve_Html_Interface_V0_1_0 = CommandToolBuilder(tool="pyqi_serve_html_interface", base_command=["pyqi", "serve-html-interface"], inputs=[ToolInput(tag="in_port", input_type=Int(optional=True), prefix="--port", doc=InputDocumentation(doc="The port to run the server on [default: 8080]")), ToolInput(tag="in_interface_module", input_type=String(optional=True), prefix="--interface-module", doc=InputDocumentation(doc="The module to serve the interface for [REQUIRED]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyqi_Serve_Html_Interface_V0_1_0().translate("wdl", allow_empty_container=True)

