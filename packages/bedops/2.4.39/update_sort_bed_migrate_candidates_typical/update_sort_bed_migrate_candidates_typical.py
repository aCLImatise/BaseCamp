from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Update_Sort_Bed_Migrate_Candidates_Typical_V0_1_0 = CommandToolBuilder(tool="update_sort_bed_migrate_candidates_typical", base_command=["update-sort-bed-migrate-candidates-typical"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Update_Sort_Bed_Migrate_Candidates_Typical_V0_1_0().translate("wdl", allow_empty_container=True)

