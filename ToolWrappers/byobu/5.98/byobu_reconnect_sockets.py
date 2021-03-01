from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Byobu_Reconnect_Sockets_V0_1_0 = CommandToolBuilder(tool="byobu_reconnect_sockets", base_command=["byobu-reconnect-sockets"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Byobu_Reconnect_Sockets_V0_1_0().translate("wdl", allow_empty_container=True)

