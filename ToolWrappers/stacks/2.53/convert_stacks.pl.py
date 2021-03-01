from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Convert_Stacks_Pl_V0_1_0 = CommandToolBuilder(tool="convert_stacks.pl", base_command=["convert_stacks.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Stacks_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

