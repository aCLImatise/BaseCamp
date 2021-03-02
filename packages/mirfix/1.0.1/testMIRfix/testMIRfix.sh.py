from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Testmirfix_Sh_V0_1_0 = CommandToolBuilder(tool="testMIRfix.sh", base_command=["testMIRfix.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Testmirfix_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

