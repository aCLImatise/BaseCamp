from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Call_Integrations_Sh_V0_1_0 = CommandToolBuilder(tool="call_integrations.sh", base_command=["call_integrations.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Call_Integrations_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

