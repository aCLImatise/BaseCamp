from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Runsplicemap_V0_1_0 = CommandToolBuilder(tool="runSpliceMap", base_command=["runSpliceMap"], inputs=[ToolInput(tag="in_run_dot_cfg", input_type=String(), position=0, doc=InputDocumentation(doc="--  Configuration options for this run, see comments in file for details"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runsplicemap_V0_1_0().translate("wdl", allow_empty_container=True)

