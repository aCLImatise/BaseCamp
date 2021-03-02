from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Anvi_Script_Run_Functional_Enrichment_Stats_V0_1_0 = CommandToolBuilder(tool="anvi_script_run_functional_enrichment_stats", base_command=["anvi-script-run-functional-enrichment-stats"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Run_Functional_Enrichment_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

