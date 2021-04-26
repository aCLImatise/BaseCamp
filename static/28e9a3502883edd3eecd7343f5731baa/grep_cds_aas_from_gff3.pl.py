from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Grep_Cds_Aas_From_Gff3_Pl_V0_1_0 = CommandToolBuilder(tool="grep_cds_aas_from_gff3.pl", base_command=["grep_cds_aas_from_gff3.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/pgcgap:1.0.28--py37pl5262hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Grep_Cds_Aas_From_Gff3_Pl_V0_1_0().translate("wdl")

