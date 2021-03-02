from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Fasconvert_Page_V0_1_0 = CommandToolBuilder(tool="fasconvert_page", base_command=["fasconvert", "page"], inputs=[ToolInput(tag="in_fi", input_type=String(optional=True), prefix="-fi", doc=InputDocumentation(doc="")), ToolInput(tag="in_fo", input_type=String(optional=True), prefix="-fo", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_fas_convert", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_other_format_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_other_format", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/perl-fast:1.06--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasconvert_Page_V0_1_0().translate("wdl")

