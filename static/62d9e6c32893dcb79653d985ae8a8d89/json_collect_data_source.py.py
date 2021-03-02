from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Json_Collect_Data_Source_Py_V0_1_0 = CommandToolBuilder(tool="json_collect_data_source.py", base_command=["json_collect_data_source.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Json_Collect_Data_Source_Py_V0_1_0().translate("wdl", allow_empty_container=True)

