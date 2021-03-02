from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gimme_Taxa_Py_V0_1_0 = CommandToolBuilder(tool="gimme_taxa.py", base_command=["gimme_taxa.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gimme_Taxa_Py_V0_1_0().translate("wdl", allow_empty_container=True)

