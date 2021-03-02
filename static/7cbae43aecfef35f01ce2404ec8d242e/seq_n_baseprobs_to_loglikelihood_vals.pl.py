from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Seq_N_Baseprobs_To_Loglikelihood_Vals_Pl_V0_1_0 = CommandToolBuilder(tool="seq_n_baseprobs_to_loglikelihood_vals.pl", base_command=["seq_n_baseprobs_to_loglikelihood_vals.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq_N_Baseprobs_To_Loglikelihood_Vals_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

