from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Estlambdafct_V0_1_0 = CommandToolBuilder(tool="EstLambdaFct", base_command=["EstLambdaFct"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Estlambdafct_V0_1_0().translate("wdl", allow_empty_container=True)

