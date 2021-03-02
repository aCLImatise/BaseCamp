from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Seqhax_Pairs_V0_1_0 = CommandToolBuilder(tool="seqhax_pairs", base_command=["seqhax", "pairs"], inputs=[ToolInput(tag="in_force_output_existing", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Force output to existing files.")), ToolInput(tag="in_minimum_length_read", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Minimum length of each read. [default 1]")), ToolInput(tag="in_pair_first_mate", input_type=File(optional=True), prefix="-1", doc=InputDocumentation(doc="Pair first mate output")), ToolInput(tag="in_pair_second_mate", input_type=File(optional=True), prefix="-2", doc=InputDocumentation(doc="Pair second mate output")), ToolInput(tag="in_interleaved_pairsonly_output", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Interleaved pairs-only output")), ToolInput(tag="in_unpaired_read_output", input_type=File(optional=True), prefix="-u", doc=InputDocumentation(doc="Unpaired read output")), ToolInput(tag="in_s", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="'Strict interleaved' output, all reads")), ToolInput(tag="in_b", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="'Broken paired' output, all reads")), ToolInput(tag="in_output_statistics_file", input_type=File(optional=True), prefix="-y", doc=InputDocumentation(doc="Output statistics to FILE.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_statistics_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_statistics_file", type_hint=File()), doc=OutputDocumentation(doc="Output statistics to FILE."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqhax_Pairs_V0_1_0().translate("wdl", allow_empty_container=True)

