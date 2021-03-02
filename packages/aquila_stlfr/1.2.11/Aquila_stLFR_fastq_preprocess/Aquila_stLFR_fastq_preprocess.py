from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Aquila_Stlfr_Fastq_Preprocess_V0_1_0 = CommandToolBuilder(tool="Aquila_stLFR_fastq_preprocess", base_command=["Aquila_stLFR_fastq_preprocess"], inputs=[ToolInput(tag="in_fast_q_one", input_type=Int(optional=True), prefix="--fastq_1", doc=InputDocumentation(doc="origin stLFR fastq 1 (gz file)")), ToolInput(tag="in_fast_q_two", input_type=Int(optional=True), prefix="--fastq_2", doc=InputDocumentation(doc="origin stLFR fastq 2 (gz file)")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out_file", doc=InputDocumentation(doc="output stLFR fastq file for Aquila_stLFR\n")), ToolInput(tag="in_use", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="output stLFR fastq file for Aquila_stLFR\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aquila_Stlfr_Fastq_Preprocess_V0_1_0().translate("wdl", allow_empty_container=True)

