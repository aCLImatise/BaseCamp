from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rnammer_Supperscaffold_Gff_To_Indiv_Transcripts_Pl_V0_1_0 = CommandToolBuilder(tool="rnammer_supperscaffold_gff_to_indiv_transcripts.pl", base_command=["rnammer_supperscaffold_gff_to_indiv_transcripts.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnammer_Supperscaffold_Gff_To_Indiv_Transcripts_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

