from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fix_Sonar_Py_V0_1_0 = CommandToolBuilder(tool="fix_sonar.py", base_command=["fix_sonar.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fix_Sonar_Py_V0_1_0().translate("wdl", allow_empty_container=True)

