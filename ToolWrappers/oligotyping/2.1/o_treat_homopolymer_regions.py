from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

O_Treat_Homopolymer_Regions_V0_1_0 = CommandToolBuilder(tool="o_treat_homopolymer_regions", base_command=["o-treat-homopolymer-regions"], inputs=[ToolInput(tag="in_input_alignment", input_type=File(optional=True), prefix="--input-alignment", doc=InputDocumentation(doc="align2first output (.paf file)")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Output FASTA file to store homopolymer-treated\nsequences")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Log file. Default, STDOUT."))], outputs=[ToolOutput(tag="out_input_alignment", output_type=File(optional=True), selector=InputSelector(input_to_select="in_input_alignment", type_hint=File()), doc=OutputDocumentation(doc="align2first output (.paf file)")), ToolOutput(tag="out_output_fast_a", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fast_a", type_hint=File()), doc=OutputDocumentation(doc="Output FASTA file to store homopolymer-treated\nsequences"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Treat_Homopolymer_Regions_V0_1_0().translate("wdl", allow_empty_container=True)

