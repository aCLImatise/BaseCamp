from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dx_Print_Bash_Vars_V0_1_0 = CommandToolBuilder(tool="dx_print_bash_vars", base_command=["dx-print-bash-vars"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Print_Bash_Vars_V0_1_0().translate("wdl", allow_empty_container=True)

