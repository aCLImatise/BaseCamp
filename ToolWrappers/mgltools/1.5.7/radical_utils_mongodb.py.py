from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Radical_Utils_Mongodb_Py_V0_1_0 = CommandToolBuilder(tool="radical_utils_mongodb.py", base_command=["radical-utils-mongodb.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Radical_Utils_Mongodb_Py_V0_1_0().translate("wdl", allow_empty_container=True)

