from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Spades_Bwa_Samse_V0_1_0 = CommandToolBuilder(tool="spades_bwa_samse", base_command=["spades-bwa", "samse"], inputs=[ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_bwa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sam_se", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_prefix", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_do_tsai", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fq", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Bwa_Samse_V0_1_0().translate("wdl")

