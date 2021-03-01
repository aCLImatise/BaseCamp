from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tbprofiler_Mutation_Stats_Py_V0_1_0 = CommandToolBuilder(tool="tbprofiler_mutation_stats.py", base_command=["tbprofiler_mutation_stats.py"], inputs=[], outputs=[], container="quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Mutation_Stats_Py_V0_1_0().translate("wdl")

