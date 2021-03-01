from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean, String

Sampling_Utils_Sample_Stream_V0_1_0 = CommandToolBuilder(tool="sampling_utils_sample_stream", base_command=["sampling-utils", "sample_stream"], inputs=[ToolInput(tag="in_verbose", input_type=Float(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Probability of picking a sequence")), ToolInput(tag="in_max_seq", input_type=Int(optional=True), prefix="--max-seq", doc=InputDocumentation(doc="Maximum number of sequences")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="The input file is a fastq file")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sampling_Utils_Sample_Stream_V0_1_0().translate("wdl", allow_empty_container=True)

