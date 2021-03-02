from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pizzly_Get_Fragment_Length_Py_Bak_V0_1_0 = CommandToolBuilder(tool="pizzly_get_fragment_length.py.bak", base_command=["pizzly_get_fragment_length.py.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pizzly_Get_Fragment_Length_Py_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

