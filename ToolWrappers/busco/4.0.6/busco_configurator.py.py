from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Busco_Configurator_Py_V0_1_0 = CommandToolBuilder(tool="busco_configurator.py", base_command=["busco_configurator.py"], inputs=[ToolInput(tag="in_config_dot_in_idot_default", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_your_config_do_tini", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Busco_Configurator_Py_V0_1_0().translate("wdl", allow_empty_container=True)

