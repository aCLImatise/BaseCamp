from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Submission_Tool_Validator_V0_1_0 = CommandToolBuilder(tool="submission_tool_validator", base_command=["submission-tool-validator"], inputs=[], outputs=[], container="quay.io/biocontainers/submission-tool-validator:1.0.4--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Submission_Tool_Validator_V0_1_0().translate("wdl")

