from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, Float

Fu_Sw_V0_1_0 = CommandToolBuilder(tool="fu_sw", base_command=["fu-sw"], inputs=[ToolInput(tag="in_query", input_type=File(optional=True), prefix="--query", doc=InputDocumentation(doc="File with the sequence(s) to align against target")), ToolInput(tag="in_target", input_type=File(optional=True), prefix="--target", doc=InputDocumentation(doc="File with the target sequence(s)")), ToolInput(tag="in_id", input_type=File(optional=True), prefix="--id", doc=InputDocumentation(doc="Align only against the sequence named `ID` in the target file")), ToolInput(tag="in_show_aln", input_type=Boolean(optional=True), prefix="--showaln", doc=InputDocumentation(doc="Show graphical alignment")), ToolInput(tag="in_pool_size", input_type=Int(optional=True), prefix="--pool-size", doc=InputDocumentation(doc="Number of sequences/pairs to process per thread [default: 20]")), ToolInput(tag="in_min_score", input_type=Int(optional=True), prefix="--min-score", doc=InputDocumentation(doc="Minimum alignment score [default: 80]")), ToolInput(tag="in_pct_id", input_type=Float(optional=True), prefix="--pct-id", doc=InputDocumentation(doc="Minimum percentage of identity [default: 85]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output"))], outputs=[], container="quay.io/biocontainers/seqfu:0.9.6--h38613fd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fu_Sw_V0_1_0().translate("wdl")

