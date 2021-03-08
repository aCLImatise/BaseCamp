from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Mmseqs_View_V0_1_0 = CommandToolBuilder(tool="mmseqs_view", base_command=["mmseqs", "view"], inputs=[ToolInput(tag="in_id_list", input_type=String(optional=True), prefix="--id-list", doc=InputDocumentation(doc="Entries to be printed separated by ',' []")), ToolInput(tag="in_idx_entry_type", input_type=Int(optional=True), prefix="--idx-entry-type", doc=InputDocumentation(doc="0: sequence, 1: src sequence, 2: header, 3: src header [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_View_V0_1_0().translate("wdl")

