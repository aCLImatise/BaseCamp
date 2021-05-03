from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Config_Ini_V0_1_0 = CommandToolBuilder(tool="config.ini", base_command=["config.ini"], inputs=[], outputs=[], container="quay.io/biocontainers/sensv:1.0.4--h2e03b76_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Config_Ini_V0_1_0().translate("wdl")

