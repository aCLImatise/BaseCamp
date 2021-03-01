from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prokka_Uniprot_To_Fasta_Db_V0_1_0 = CommandToolBuilder(tool="prokka_uniprot_to_fasta_db", base_command=["prokka-uniprot_to_fasta_db"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prokka_Uniprot_To_Fasta_Db_V0_1_0().translate("wdl", allow_empty_container=True)

