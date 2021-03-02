from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bitbucket_Pipelines_Yml_V0_1_0 = CommandToolBuilder(tool="bitbucket_pipelines.yml", base_command=["bitbucket-pipelines.yml"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bitbucket_Pipelines_Yml_V0_1_0().translate("wdl", allow_empty_container=True)

