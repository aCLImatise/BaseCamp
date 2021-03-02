from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, Int, String

Calculate_Ref_Alt_Counts_V0_1_0 = CommandToolBuilder(tool="calculate_ref_alt_counts", base_command=["calculate_ref_alt_counts"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to the output file")), ToolInput(tag="in_input", input_type=Array(t=File(), optional=True), prefix="--input", doc=InputDocumentation(doc="Path to the Input mavis summary file")), ToolInput(tag="in_filepath__bam", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="FILEPATH, --bam <name> FILEPATH\nName for the library and the path to its bam file")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Path to the Input reference genome fasta file")), ToolInput(tag="in_event_size", input_type=Int(optional=True), prefix="--event_size", doc=InputDocumentation(doc="The maximum size of a indel event to calculate the\nref/alt counts")), ToolInput(tag="in_buffer", input_type=String(optional=True), prefix="--buffer", doc=InputDocumentation(doc="The amount of overhang (accounting for repeats) a read\nmust have in order to be considered\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calculate_Ref_Alt_Counts_V0_1_0().translate("wdl", allow_empty_container=True)

