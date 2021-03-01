from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Watchdog_Formatcondayaml_V0_1_0 = CommandToolBuilder(tool="watchdog_formatCondaYaml", base_command=["watchdog-formatCondaYaml"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Watchdog_Formatcondayaml_V0_1_0().translate("wdl", allow_empty_container=True)

