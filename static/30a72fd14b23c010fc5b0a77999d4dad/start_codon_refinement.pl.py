from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Start_Codon_Refinement_Pl_V0_1_0 = CommandToolBuilder(tool="start_codon_refinement.pl", base_command=["start_codon_refinement.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Start_Codon_Refinement_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

