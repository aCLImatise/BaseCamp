from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

O_Sequence_Distances_V0_1_0 = CommandToolBuilder(tool="o_sequence_distances", base_command=["o-sequence-distances"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="Output file to store results")), ToolInput(tag="in_align", input_type=Boolean(optional=True), prefix="--align", doc=InputDocumentation(doc="If sequences require pairwise alignment")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA file that contains -representative?- sequences"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file to store results"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Sequence_Distances_V0_1_0().translate("wdl", allow_empty_container=True)

