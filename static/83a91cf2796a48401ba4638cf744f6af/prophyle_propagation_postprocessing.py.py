from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prophyle_Propagation_Postprocessing_Py_V0_1_0 = CommandToolBuilder(tool="prophyle_propagation_postprocessing.py", base_command=["prophyle_propagation_postprocessing.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Propagation_Postprocessing_Py_V0_1_0().translate("wdl", allow_empty_container=True)

