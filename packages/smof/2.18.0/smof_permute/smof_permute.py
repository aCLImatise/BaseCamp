from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Smof_Permute_V0_1_0 = CommandToolBuilder(tool="smof_permute", base_command=["smof", "permute"], inputs=[ToolInput(tag="in_word_size", input_type=Int(optional=True), prefix="--word-size", doc=InputDocumentation(doc="size of each word (default=1)")), ToolInput(tag="in_start_offset", input_type=Int(optional=True), prefix="--start-offset", doc=InputDocumentation(doc="number of letters to ignore at beginning (default=0)")), ToolInput(tag="in_end_offset", input_type=Int(optional=True), prefix="--end-offset", doc=InputDocumentation(doc="number of letters to ignore at end (default=0)")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="set random seed (for reproducibility/debugging)")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Permute_V0_1_0().translate("wdl", allow_empty_container=True)

