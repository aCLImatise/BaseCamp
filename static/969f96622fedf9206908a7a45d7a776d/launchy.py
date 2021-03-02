from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Launchy_V0_1_0 = CommandToolBuilder(tool="launchy", base_command=["launchy"], inputs=[ToolInput(tag="in_application", input_type=String(optional=True), prefix="--application", doc=InputDocumentation(doc="Explicitly specify the application class to use in the launch")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Force debug. Output lots of information.")), ToolInput(tag="in_engine", input_type=String(optional=True), prefix="--engine", doc=InputDocumentation(doc="Force launchy to behave as if it was on a particular ruby engine.")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Don't launchy, print the command to be executed on stdout")), ToolInput(tag="in_host_os", input_type=String(optional=True), prefix="--host-os", doc=InputDocumentation(doc="Force launchy to behave as if it was on a particular host os.")), ToolInput(tag="in_thing_to_launch", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Launchy_V0_1_0().translate("wdl", allow_empty_container=True)

