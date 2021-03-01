from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Seqdiff_V0_1_0 = CommandToolBuilder(tool="seqdiff", base_command=["seqdiff"], inputs=[ToolInput(tag="in_first", input_type=Boolean(optional=True), prefix="--first", doc=InputDocumentation(doc=",      First sequence file (required)")), ToolInput(tag="in_second", input_type=Boolean(optional=True), prefix="--second", doc=InputDocumentation(doc=",     Second sequence file (required)")), ToolInput(tag="in_a_output", input_type=Boolean(optional=True), prefix="--a_output", doc=InputDocumentation(doc=",   File name for uniques from first file")), ToolInput(tag="in_b_output", input_type=Boolean(optional=True), prefix="--b_output", doc=InputDocumentation(doc=",   File name for uniques from second file")), ToolInput(tag="in_c_output", input_type=Boolean(optional=True), prefix="--c_output", doc=InputDocumentation(doc=",   File name for common entries")), ToolInput(tag="in_headers", input_type=Boolean(optional=True), prefix="--headers", doc=InputDocumentation(doc=",    Compare headers instead of sequences (default: false)")), ToolInput(tag="in_summary", input_type=Boolean(optional=True), prefix="--summary", doc=InputDocumentation(doc=", Just show summary stats? (default: false)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc=",    Print extra details during the run"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqdiff_V0_1_0().translate("wdl", allow_empty_container=True)

