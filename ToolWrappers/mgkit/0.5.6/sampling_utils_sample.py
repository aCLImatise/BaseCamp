from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, Boolean, String

Sampling_Utils_Sample_V0_1_0 = CommandToolBuilder(tool="sampling_utils_sample", base_command=["sampling-utils", "sample"], inputs=[ToolInput(tag="in_verbose", input_type=File(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Prefix for the file name(s) in output  [default:\nsample]")), ToolInput(tag="in_number", input_type=Int(optional=True), prefix="--number", doc=InputDocumentation(doc="Number of samples to take  [default: 1]")), ToolInput(tag="in_prob", input_type=Float(optional=True), prefix="--prob", doc=InputDocumentation(doc="Probability of picking a sequence  [default: 0.001]")), ToolInput(tag="in_max_seq", input_type=Int(optional=True), prefix="--max-seq", doc=InputDocumentation(doc="Maximum number of sequences  [default: 100000]")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="The input file is a fastq file")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="gzip output files")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_verbose", output_type=File(optional=True), selector=InputSelector(input_to_select="in_verbose", type_hint=File()), doc=OutputDocumentation(doc="Prefix for the file name(s) in output  [default:\nsample]"))], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sampling_Utils_Sample_V0_1_0().translate("wdl")

