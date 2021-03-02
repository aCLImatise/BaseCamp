from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gen_Paths_Sh_V0_1_0 = CommandToolBuilder(tool="gen_paths.sh", base_command=["gen_paths.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gen_Paths_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

