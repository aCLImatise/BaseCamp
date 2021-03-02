from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pyfastx_Fq2Fa_V0_1_0 = CommandToolBuilder(tool="pyfastx_fq2fa", base_command=["pyfastx", "fq2fa"], inputs=[ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="output file, default: output to stdout\n")), ToolInput(tag="in_fast_x", input_type=String(), position=0, doc=InputDocumentation(doc="fastq file, gzip support"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="output file, default: output to stdout\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyfastx_Fq2Fa_V0_1_0().translate("wdl", allow_empty_container=True)

