from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Message_Extract_V0_1_0 = CommandToolBuilder(tool="message_extract", base_command=["message-extract"], inputs=[ToolInput(tag="in_file_path_input", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="The file path of the input message")), ToolInput(tag="in_invert_match_filter", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Invert match. Filter instead of extract given NCodes")), ToolInput(tag="in_n_codes", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Message_Extract_V0_1_0().translate("wdl", allow_empty_container=True)

