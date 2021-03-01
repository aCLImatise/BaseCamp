from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Nthll_V0_1_0 = CommandToolBuilder(tool="nthll", base_command=["nthll"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use N parallel threads [1] (N>=2 should be used when input files are >=2)")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="the length of kmer [64]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nthll_V0_1_0().translate("wdl", allow_empty_container=True)

