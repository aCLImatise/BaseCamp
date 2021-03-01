from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Opt_Init_And_Term_Probs_Pl_V0_1_0 = CommandToolBuilder(tool="opt_init_and_term_probs.pl", base_command=["opt_init_and_term_probs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Opt_Init_And_Term_Probs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

