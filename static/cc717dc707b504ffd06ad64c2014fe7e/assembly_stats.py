from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Assembly_Stats_V0_1_0 = CommandToolBuilder(tool="assembly_stats", base_command=["assembly-stats"], inputs=[ToolInput(tag="in_minimum_length_cutoff", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Minimum length cutoff for each sequence.\nSequences shorter than the cutoff will be ignored [1]")), ToolInput(tag="in_print__output", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Print 'grep friendly' output")), ToolInput(tag="in_print_tabdelimited_output", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Print tab-delimited output")), ToolInput(tag="in_print_tabdelimited_output_header", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Print tab-delimited output with no header line")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print version and exit\n")), ToolInput(tag="in_stats", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_list_of_fast_a_slash_q_files", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assembly_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

