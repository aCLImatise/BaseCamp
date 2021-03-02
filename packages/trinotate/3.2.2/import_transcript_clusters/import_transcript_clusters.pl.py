from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Import_Transcript_Clusters_Pl_V0_1_0 = CommandToolBuilder(tool="import_transcript_clusters.pl", base_command=["import_transcript_clusters.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Import_Transcript_Clusters_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

