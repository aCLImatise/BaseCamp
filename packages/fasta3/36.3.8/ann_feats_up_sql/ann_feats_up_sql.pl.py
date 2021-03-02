from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ann_Feats_Up_Sql_Pl_V0_1_0 = CommandToolBuilder(tool="ann_feats_up_sql.pl", base_command=["ann_feats_up_sql.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ann_Feats_Up_Sql_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

