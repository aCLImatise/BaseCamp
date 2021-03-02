from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pathogen_Profiler_Get_Mutations_Py_V0_1_0 = CommandToolBuilder(tool="pathogen_profiler_get_mutations.py", base_command=["pathogen-profiler-get-mutations.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pathogen_Profiler_Get_Mutations_Py_V0_1_0().translate("wdl", allow_empty_container=True)

