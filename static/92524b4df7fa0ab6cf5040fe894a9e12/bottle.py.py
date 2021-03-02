from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bottle_Py_V0_1_0 = CommandToolBuilder(tool="bottle.py", base_command=["bottle.py"], inputs=[ToolInput(tag="in_bind", input_type=String(optional=True), prefix="--bind", doc=InputDocumentation(doc="bind socket to ADDRESS.")), ToolInput(tag="in_server", input_type=String(optional=True), prefix="--server", doc=InputDocumentation(doc="use SERVER as backend.")), ToolInput(tag="in_plugin", input_type=String(optional=True), prefix="--plugin", doc=InputDocumentation(doc="install additional plugin/s.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="start server in debug mode.")), ToolInput(tag="in_reload", input_type=Boolean(optional=True), prefix="--reload", doc=InputDocumentation(doc="auto-reload on file changes.")), ToolInput(tag="in_app", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bottle_Py_V0_1_0().translate("wdl", allow_empty_container=True)

