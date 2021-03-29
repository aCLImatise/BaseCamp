from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Python2_7_Config_V0_1_0 = CommandToolBuilder(tool="python2.7_config", base_command=["python2.7-config"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Python2_7_Config_V0_1_0().translate("wdl", allow_empty_container=True)

