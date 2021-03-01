from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Removerepeats_Pl_V0_1_0 = CommandToolBuilder(tool="removeRepeats.pl", base_command=["removeRepeats.pl"], inputs=[ToolInput(tag="in_reference_sequence_filename", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="reference sequence filename")), ToolInput(tag="in_tabdelimited_coords_filename", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="tab-delimited coords filename")), ToolInput(tag="in_output_multifasta_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output multifasta filename (default: non_repeats.fna)")), ToolInput(tag="in_output_repeats_stats", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="output repeats stats filename (default: non_repeat_stats.txt)"))], outputs=[ToolOutput(tag="out_output_multifasta_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_multifasta_filename", type_hint=File()), doc=OutputDocumentation(doc="output multifasta filename (default: non_repeats.fna)")), ToolOutput(tag="out_output_repeats_stats", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_repeats_stats", type_hint=File()), doc=OutputDocumentation(doc="output repeats stats filename (default: non_repeat_stats.txt)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Removerepeats_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

