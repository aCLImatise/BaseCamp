from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Sga_Rmdup_V0_1_0 = CommandToolBuilder(tool="sga_rmdup", base_command=["sga", "rmdup"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="write the output to FILE (default: READFILE.rmdup.fa)")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="use PREFIX instead of the prefix of the reads filename for the input/output files")), ToolInput(tag="in_error_rate", input_type=Boolean(optional=True), prefix="--error-rate", doc=InputDocumentation(doc="the maximum error rate allowed to consider two sequences identical (default: exact matches required)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use N threads (default: 1)")), ToolInput(tag="in_sample_rate", input_type=Int(optional=True), prefix="--sample-rate", doc=InputDocumentation(doc="sample the symbol counts every N symbols in the FM-index. Higher values use significantly\nless memory at the cost of higher runtime. This value must be a power of 2 (default: 256)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="write the output to FILE (default: READFILE.rmdup.fa)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Rmdup_V0_1_0().translate("wdl", allow_empty_container=True)

