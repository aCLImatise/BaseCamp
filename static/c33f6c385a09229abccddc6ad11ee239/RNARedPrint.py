from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Rnaredprint_V0_1_0 = CommandToolBuilder(tool="RNARedPrint", base_command=["RNARedPrint"], inputs=[ToolInput(tag="in_num", input_type=Int(optional=True), prefix="--num", doc=InputDocumentation(doc="- Sets number of generated sequences (default 10)")), ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc="- Simply compute the partition function and report the result.")), ToolInput(tag="in_weights", input_type=Int(optional=True), prefix="--weights", doc=InputDocumentation(doc=",w2.. - Assigns custom weights to each targeted structure (default 1. for all)")), ToolInput(tag="in_gcw", input_type=Int(optional=True), prefix="--gcw", doc=InputDocumentation(doc="- Assigns custom weight to each occurrence of GC, to control GC% (default 1.)")), ToolInput(tag="in_model", input_type=Int(optional=True), prefix="--model", doc=InputDocumentation(doc="- Set energy model used for stochastic sampling:\nm = 0: Uniform\nm = 1: Nussinov (-3/-2/-1 for GC/AU/GU)\nm = 2: Base pair energy model (Default; distinguishs GC/AU/GU, inner/exterior)\nm = 3: Stacking model (no isolated base-pairs!)")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="- Prefix path for locating the TD libraries"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnaredprint_V0_1_0().translate("wdl", allow_empty_container=True)

