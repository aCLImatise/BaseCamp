from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Dgenies_Inforun_V0_1_0 = CommandToolBuilder(tool="dgenies_inforun", base_command=["dgenies", "inforun"], inputs=[ToolInput(tag="in_message", input_type=String(optional=True), prefix="--message", doc=InputDocumentation(doc="Message to add")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Type of message")), ToolInput(tag="in_clear", input_type=Boolean(optional=True), prefix="--clear", doc=InputDocumentation(doc="Remove message"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dgenies_Inforun_V0_1_0().translate("wdl", allow_empty_container=True)

