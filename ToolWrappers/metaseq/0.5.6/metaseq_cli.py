from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Metaseq_Cli_V0_1_0 = CommandToolBuilder(tool="metaseq_cli", base_command=["metaseq-cli"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metaseq_Cli_V0_1_0().translate("wdl", allow_empty_container=True)

