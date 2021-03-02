from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Convert_Abu2List_Pl_V0_1_0 = CommandToolBuilder(tool="convert_abu2list.pl", base_command=["convert_abu2list.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Abu2List_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

