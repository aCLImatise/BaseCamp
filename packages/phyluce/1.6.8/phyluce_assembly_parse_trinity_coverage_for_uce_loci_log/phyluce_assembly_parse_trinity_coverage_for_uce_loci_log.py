from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Phyluce_Assembly_Parse_Trinity_Coverage_For_Uce_Loci_Log_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_parse_trinity_coverage_for_uce_loci_log", base_command=["phyluce_assembly_parse_trinity_coverage_for_uce_loci_log"], inputs=[ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="The log file to parse")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output CSV file to create"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output CSV file to create"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Parse_Trinity_Coverage_For_Uce_Loci_Log_V0_1_0().translate("wdl", allow_empty_container=True)

