from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Fastq_Sample_V0_1_0 = CommandToolBuilder(tool="fastq_sample", base_command=["fastq-sample"], inputs=[ToolInput(tag="in_number_reads_sample", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="the number of reads to sample (default: 10000)")), ToolInput(tag="in_proportion_total_reads", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="the proportion of the total reads to sample")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file prefix")), ToolInput(tag="in_with_replacement", input_type=Boolean(optional=True), prefix="--with-replacement", doc=InputDocumentation(doc="sample with replacement")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="a manual seed to the random number generator"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file prefix"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Sample_V0_1_0().translate("wdl", allow_empty_container=True)

