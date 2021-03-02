from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Seqtk_Sample_V0_1_0 = CommandToolBuilder(tool="seqtk_sample", base_command=["seqtk", "sample"], inputs=[ToolInput(tag="in_rng_seed", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="RNG seed [11]")), ToolInput(tag="in_pass_mode_slow", input_type=Boolean(optional=True), prefix="-2", doc=InputDocumentation(doc="2-pass mode: twice as slow but with much reduced memory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtk_Sample_V0_1_0().translate("wdl", allow_empty_container=True)

