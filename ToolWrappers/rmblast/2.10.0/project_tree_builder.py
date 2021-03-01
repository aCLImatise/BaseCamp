from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Project_Tree_Builder_V0_1_0 = CommandToolBuilder(tool="project_tree_builder", base_command=["project_tree_builder"], inputs=[], outputs=[], container="quay.io/biocontainers/rmblast:2.10.0--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Project_Tree_Builder_V0_1_0().translate("wdl")

