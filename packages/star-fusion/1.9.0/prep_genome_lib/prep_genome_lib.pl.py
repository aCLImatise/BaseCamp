from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prep_Genome_Lib_Pl_V0_1_0 = CommandToolBuilder(tool="prep_genome_lib.pl", base_command=["prep_genome_lib.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prep_Genome_Lib_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

