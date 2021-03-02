from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Script_Multi_Project_Run_Input_Parameters_Sh_V0_1_0 = CommandToolBuilder(tool="script_multi_project_run_input_parameters.sh", base_command=["script_multi_project_run_input_parameters.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Script_Multi_Project_Run_Input_Parameters_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

