from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Batchparallel_Pl_V0_1_0 = CommandToolBuilder(tool="batchParallel.pl", base_command=["batchParallel.pl"], inputs=[ToolInput(tag="in_cpu", input_type=Boolean(optional=True), prefix="-cpu", doc=InputDocumentation(doc="<#> (max number of parallel processes, default: 20)")), ToolInput(tag="in_file_suffix_stdout", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="<file suffix> (instead of stdout, 'flag file.suffix will be used')\ni.e. -o -o txt")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_suffix_vertical_line_none", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_this", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_will", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_run", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_each", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_provided", input_type=String(), position=10, doc=InputDocumentation(doc="")), ToolInput(tag="in_after", input_type=String(), position=11, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Batchparallel_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

