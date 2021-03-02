from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Embl_Dat_To_Trinotate_Sqlite_Resourcedb_Pl_V0_1_0 = CommandToolBuilder(tool="EMBL_dat_to_Trinotate_sqlite_resourceDB.pl", base_command=["EMBL_dat_to_Trinotate_sqlite_resourceDB.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Embl_Dat_To_Trinotate_Sqlite_Resourcedb_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

