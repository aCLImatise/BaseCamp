from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Trinotate_Blast_Loader_Pl_V0_1_0 = CommandToolBuilder(tool="Trinotate_BLAST_loader.pl", base_command=["Trinotate_BLAST_loader.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trinotate_Blast_Loader_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

