from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ffindex_Resume_Pl_V0_1_0 = CommandToolBuilder(tool="ffindex_resume.pl", base_command=["ffindex_resume.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ffindex_Resume_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

