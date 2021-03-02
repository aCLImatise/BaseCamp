from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, File, Boolean

Hivtrace_Viz_V0_1_0 = CommandToolBuilder(tool="hivtrace_viz", base_command=["hivtrace_viz"], inputs=[ToolInput(tag="in_hostname", input_type=Float(optional=True), prefix="--hostname", doc=InputDocumentation(doc="hostname to bind to (default: 127.0.0.1")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="--port", doc=InputDocumentation(doc="port to bind to; if this port is already in use a free\nport will be selected automatically (default: 8080)")), ToolInput(tag="in_browser", input_type=File(optional=True), prefix="--browser", doc=InputDocumentation(doc="name of webbrowser to launch as described in the\ndocumentation of Python's webbrowser module:\nhttps://docs.python.org/3/library/webbrowser.html")), ToolInput(tag="in_server", input_type=Boolean(optional=True), prefix="--server", doc=InputDocumentation(doc="start hivtrace in server-only mode--no attempt will be\nto open a browser\n")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hivtrace_Viz_V0_1_0().translate("wdl", allow_empty_container=True)

