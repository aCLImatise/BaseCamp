from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Sga_Gen_Ssa_V0_1_0 = CommandToolBuilder(tool="sga_gen_ssa", base_command=["sga", "gen-ssa"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM threads to construct the index (default: 1)")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="validate that the suffix array/bwt is correct")), ToolInput(tag="in_sai_only", input_type=Boolean(optional=True), prefix="--sai-only", doc=InputDocumentation(doc="only build the lexicographic index"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Gen_Ssa_V0_1_0().translate("wdl", allow_empty_container=True)

