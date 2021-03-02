from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fc_Unzip_Gen_Gfa_V1_Py_V0_1_0 = CommandToolBuilder(tool="fc_unzip_gen_gfa_v1.py", base_command=["fc_unzip_gen_gfa_v1.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Unzip_Gen_Gfa_V1_Py_V0_1_0().translate("wdl", allow_empty_container=True)

