from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Integration_Test_V0_1_0 = CommandToolBuilder(tool="integration_test", base_command=["integration-test"], inputs=[], outputs=[], container="quay.io/biocontainers/irida-uploader:0.6.0--py36_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Integration_Test_V0_1_0().translate("wdl")

