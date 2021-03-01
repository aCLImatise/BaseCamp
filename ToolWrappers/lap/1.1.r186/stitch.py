from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Stitch_V0_1_0 = CommandToolBuilder(tool="stitch", base_command=["stitch"], inputs=[ToolInput(tag="in_file_containing_first_read", input_type=File(optional=True), prefix="-1", doc=InputDocumentation(doc="The file containing the first read of each pair")), ToolInput(tag="in_file_containing_second_read", input_type=File(optional=True), prefix="-2", doc=InputDocumentation(doc="The file containing the second read of each pair")), ToolInput(tag="in_out_ie", input_type=Boolean(optional=True), prefix="--outie", doc=InputDocumentation(doc="Reverse complement the first mate, instead of the")), ToolInput(tag="in_second", input_type=String(), position=0, doc=InputDocumentation(doc="-?, --help                 Give this help list"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stitch_V0_1_0().translate("wdl", allow_empty_container=True)

