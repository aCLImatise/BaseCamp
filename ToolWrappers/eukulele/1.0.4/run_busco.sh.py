from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Run_Busco_Sh_V0_1_0 = CommandToolBuilder(tool="run_busco.sh", base_command=["run_busco.sh"], inputs=[ToolInput(tag="in_python_three", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_busco_configurator_do_tpy", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_config_dot_in_idot_default", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_your_config_do_tini", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/eukulele:1.0.4--pyhcb32578_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Busco_Sh_V0_1_0().translate("wdl")

