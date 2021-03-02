from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gtf_File_To_Feature_Seqs_Pl_V0_1_0 = CommandToolBuilder(tool="gtf_file_to_feature_seqs.pl", base_command=["gtf_file_to_feature_seqs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf_File_To_Feature_Seqs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

