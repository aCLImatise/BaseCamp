from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


__Init___Py_V0_1_0 = CommandToolBuilder(tool="__init__.py", base_command=["__init__.py"], inputs=[], outputs=[], container="quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    __Init___Py_V0_1_0().translate("wdl")

