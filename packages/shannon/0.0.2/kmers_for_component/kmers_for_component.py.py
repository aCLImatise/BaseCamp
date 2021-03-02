from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kmers_For_Component_Py_V0_1_0 = CommandToolBuilder(tool="kmers_for_component.py", base_command=["kmers_for_component.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmers_For_Component_Py_V0_1_0().translate("wdl", allow_empty_container=True)

