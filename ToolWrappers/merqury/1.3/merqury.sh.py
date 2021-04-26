from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Merqury_Sh_V0_1_0 = CommandToolBuilder(tool="merqury.sh", base_command=["merqury.sh"], inputs=[ToolInput(tag="in_read_db_dot_meryl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mat_dot_meryl", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_pat_dot_meryl", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_asm_one_dot_fast_a", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_asm_two_dot_fast_a", input_type=Int(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/merqury:1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merqury_Sh_V0_1_0().translate("wdl")

