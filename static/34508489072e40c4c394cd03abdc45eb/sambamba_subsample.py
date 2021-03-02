from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Sambamba_Subsample_V0_1_0 = CommandToolBuilder(tool="sambamba_subsample", base_command=["sambamba", "subsample"], inputs=[ToolInput(tag="in_type", input_type=Boolean(optional=True), prefix="--type", doc=InputDocumentation(doc="[fasthash]   Algorithm for subsampling (fasthash, default is none)")), ToolInput(tag="in_max_cov", input_type=Boolean(optional=True), prefix="--max-cov", doc=InputDocumentation(doc="[depth]   Maximum coverage (approx)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Set output file (default stdout)")), ToolInput(tag="in_remove", input_type=Boolean(optional=True), prefix="--remove", doc=InputDocumentation(doc="Remove over sampled reads from output")), ToolInput(tag="in_logging", input_type=String(optional=True), prefix="--logging", doc=InputDocumentation(doc="Set logging to debug|info|warning|critical -nyi")), ToolInput(tag="in_input_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Set output file (default stdout)"))], container="quay.io/biocontainers/sambamba:0.8.0--h984e79f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sambamba_Subsample_V0_1_0().translate("wdl")

