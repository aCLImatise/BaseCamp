from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Update_Seq_N_Annotation_Fields_Pl_V0_1_0 = CommandToolBuilder(tool="update_seq_n_annotation_fields.pl", base_command=["update_seq_n_annotation_fields.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Update_Seq_N_Annotation_Fields_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

