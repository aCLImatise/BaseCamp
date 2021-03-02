from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float

Streamer_1D_V0_1_0 = CommandToolBuilder(tool="streamer_1d", base_command=["streamer_1d"], inputs=[ToolInput(tag="in_in_dot_two_ddot_pairs_do_tgz", input_type=Float(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Streamer_1D_V0_1_0().translate("wdl", allow_empty_container=True)

