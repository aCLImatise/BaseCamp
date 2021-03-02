from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Anvi_Script_Fasta_To_Contigs_Db_V0_1_0 = CommandToolBuilder(tool="anvi_script_FASTA_to_contigs_db", base_command=["anvi-script-FASTA-to-contigs-db"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Fasta_To_Contigs_Db_V0_1_0().translate("wdl", allow_empty_container=True)

