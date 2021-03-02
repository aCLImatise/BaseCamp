from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Wgfast_Genbankqc_Log_Stats_V0_1_0 = CommandToolBuilder(tool="wgfast_genbankqc_log_stats", base_command=["wgfast_genbankqc", "log-stats"], inputs=[ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wgfast_Genbankqc_Log_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

