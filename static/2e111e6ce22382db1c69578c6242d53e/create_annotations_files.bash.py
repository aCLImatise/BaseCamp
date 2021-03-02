from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Create_Annotations_Files_Bash_V0_1_0 = CommandToolBuilder(tool="create_annotations_files.bash", base_command=["create_annotations_files.bash"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Annotations_Files_Bash_V0_1_0().translate("wdl", allow_empty_container=True)

