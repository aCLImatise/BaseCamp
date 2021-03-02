from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Extractmessages_V0_1_0 = CommandToolBuilder(tool="extractmessages", base_command=["extractmessages"], inputs=[ToolInput(tag="in_include_following_messages", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="include the following messages in the next output")), ToolInput(tag="in_exclude_following_messages", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="exclude the following messages from the next output")), ToolInput(tag="in_message", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="message")), ToolInput(tag="in_write_output_here", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="write output here")), ToolInput(tag="in_type", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractmessages_V0_1_0().translate("wdl", allow_empty_container=True)

