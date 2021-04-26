from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int

Ribocutter_V0_1_0 = CommandToolBuilder(tool="ribocutter", base_command=["ribocutter"], inputs=[ToolInput(tag="in_input", input_type=Array(t=String(), optional=True), prefix="--input", doc=InputDocumentation(doc="Input fastq(s)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output filename")), ToolInput(tag="in_max_reads", input_type=Int(optional=True), prefix="--max_reads", doc=InputDocumentation(doc="max reads to examine")), ToolInput(tag="in_min_read_length", input_type=Int(optional=True), prefix="--min_read_length", doc=InputDocumentation(doc="A fasta file of background sequences that you do not\nwish to target")), ToolInput(tag="in_t_seven", input_type=Int(optional=True), prefix="--t7", doc=InputDocumentation(doc="T7 promoter sequence")), ToolInput(tag="in_overlap", input_type=String(optional=True), prefix="--overlap", doc=InputDocumentation(doc="The overlap, compatible with EnGen NEB kit"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output filename"))], container="quay.io/biocontainers/ribocutter:0.0.1--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribocutter_V0_1_0().translate("wdl")

