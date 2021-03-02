from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Example_User_Config_Yaml_V0_1_0 = CommandToolBuilder(tool="example_user_config.yaml", base_command=["example_user_config.yaml"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Example_User_Config_Yaml_V0_1_0().translate("wdl", allow_empty_container=True)

