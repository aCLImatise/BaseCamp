from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Centrifuge_Sort_Nt_Pl_V0_1_0 = CommandToolBuilder(tool="centrifuge_sort_nt.pl", base_command=["centrifuge-sort-nt.pl"], inputs=[ToolInput(tag="in_output_mappings_are", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="Output mappings that are present in sequence file to file str")), ToolInput(tag="in_output_acs_mapping", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="Output ACs w/o mapping to file str")), ToolInput(tag="in_sequence_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mapping_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_mappings_are", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_mappings_are", type_hint=File()), doc=OutputDocumentation(doc="Output mappings that are present in sequence file to file str")), ToolOutput(tag="out_output_acs_mapping", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_acs_mapping", type_hint=File()), doc=OutputDocumentation(doc="Output ACs w/o mapping to file str"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Centrifuge_Sort_Nt_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

