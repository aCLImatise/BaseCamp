from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Webserver_Results_Head_V0_1_0 = CommandToolBuilder(tool="webserver_results.head", base_command=["webserver-results.head"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Webserver_Results_Head_V0_1_0().translate("wdl", allow_empty_container=True)

