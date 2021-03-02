from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, File

Pyfastx_Sample_V0_1_0 = CommandToolBuilder(tool="pyfastx_sample", base_command=["pyfastx", "sample"], inputs=[ToolInput(tag="in_number_sequences_sampled", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="number of sequences to be sampled")), ToolInput(tag="in_proportion_sequences_sampled", input_type=Float(optional=True), prefix="-p", doc=InputDocumentation(doc="proportion of sequences to be sampled, 0~1")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="random seed, default is the current system time")), ToolInput(tag="in_sequential_read", input_type=Boolean(optional=True), prefix="--sequential-read", doc=InputDocumentation(doc="start sequential reading, particularly suitable for\nsampling large numbers of sequences")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="output file, default: output to stdout\n"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="output file, default: output to stdout\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyfastx_Sample_V0_1_0().translate("wdl", allow_empty_container=True)

