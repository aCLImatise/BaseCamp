from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Stark_V0_1_0 = CommandToolBuilder(tool="stark", base_command=["stark"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="use FILE for input")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="use FILE for output")), ToolInput(tag="in_log", input_type=Int(optional=True), prefix="--log", doc=InputDocumentation(doc="use LEVEL for log level (0=OFF, 1000=ALL)")), ToolInput(tag="in_merge_type", input_type=Int(optional=True), prefix="--merge-type", doc=InputDocumentation(doc="use TYPE for merging (0=no merge, 1=only node reducing merges, 2=all merges)")), ToolInput(tag="in_unify_before_run", input_type=Boolean(optional=True), prefix="--unify-before-run", doc=InputDocumentation(doc="unify input file unitigs before use")), ToolInput(tag="in_statistics", input_type=Int(optional=True), prefix="--statistics", doc=InputDocumentation(doc="print statistics (0=no statistics, 1=trivial statistics, 2=cpu-consuming statistics)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="use FILE for output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stark_V0_1_0().translate("wdl", allow_empty_container=True)

