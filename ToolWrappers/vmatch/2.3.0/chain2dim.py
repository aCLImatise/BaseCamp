from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Chain2Dim_V0_1_0 = CommandToolBuilder(tool="chain2dim", base_command=["chain2dim"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chain2Dim_V0_1_0().translate("wdl", allow_empty_container=True)

