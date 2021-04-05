from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Amptk_Show_V0_1_0 = CommandToolBuilder(tool="amptk_show", base_command=["amptk", "show"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Input FASTQ file (.demux.fq)")), ToolInput(tag="in_quality_trim", input_type=Boolean(optional=True), prefix="--quality_trim", doc=InputDocumentation(doc="Quality trim reads")), ToolInput(tag="in_max_ee", input_type=Boolean(optional=True), prefix="--maxee", doc=InputDocumentation(doc="maxEE threshold for quality. Default: 1.0")), ToolInput(tag="in_length", input_type=Boolean(optional=True), prefix="--length", doc=InputDocumentation(doc="truncation length for trimming: Default: 250")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output FASTQ file name (--quality_trim only)")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output FASTQ file name (--quality_trim only)"))], container="quay.io/biocontainers/amptk:1.5.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Show_V0_1_0().translate("wdl")

