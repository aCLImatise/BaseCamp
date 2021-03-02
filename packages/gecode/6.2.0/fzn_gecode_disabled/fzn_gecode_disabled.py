from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Fzn_Gecode_Disabled_V0_1_0 = CommandToolBuilder(tool="fzn_gecode_disabled", base_command=["fzn-gecode", "disabled"], inputs=[ToolInput(tag="in_fz_n_gecode", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fzn_Gecode_Disabled_V0_1_0().translate("wdl")

