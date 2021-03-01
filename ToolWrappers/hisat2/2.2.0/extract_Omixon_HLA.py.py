from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Extract_Omixon_Hla_Py_V0_1_0 = CommandToolBuilder(tool="extract_Omixon_HLA.py", base_command=["extract_Omixon_HLA.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Omixon_Hla_Py_V0_1_0().translate("wdl", allow_empty_container=True)

