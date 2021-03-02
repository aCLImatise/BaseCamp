from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


O_Gen_Stackbar_With_Sets_From_Environment_V0_1_0 = CommandToolBuilder(tool="o_gen_stackbar_with_sets_from_ENVIRONMENT", base_command=["o-gen-stackbar-with-sets-from-ENVIRONMENT"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Gen_Stackbar_With_Sets_From_Environment_V0_1_0().translate("wdl", allow_empty_container=True)

