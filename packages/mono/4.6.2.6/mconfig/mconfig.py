from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Mconfig_V0_1_0 = CommandToolBuilder(tool="mconfig", base_command=["mconfig"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Read the specified config file in addition to\nthe standard ones. Settings in this file override ones\nin the other files.")), ToolInput(tag="in_target", input_type=String(optional=True), prefix="--target", doc=InputDocumentation(doc="Use this target when executing 'command'")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command_parameters", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mconfig_V0_1_0().translate("wdl", allow_empty_container=True)

