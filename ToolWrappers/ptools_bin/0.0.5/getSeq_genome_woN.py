from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Getseq_Genome_Won_V0_1_0 = CommandToolBuilder(tool="getSeq_genome_woN", base_command=["getSeq_genome_woN"], inputs=[], outputs=[], container="quay.io/biocontainers/ptools_bin:0.0.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getseq_Genome_Won_V0_1_0().translate("wdl")

