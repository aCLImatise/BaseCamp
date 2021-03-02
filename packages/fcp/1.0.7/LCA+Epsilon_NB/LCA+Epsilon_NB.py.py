from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Lca_Epsilon_Nb_Py_V0_1_0 = CommandToolBuilder(tool="LCA+Epsilon_NB.py", base_command=["LCA+Epsilon-NB.py"], inputs=[ToolInput(tag="in_python", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_lca", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lca_Epsilon_Nb_Py_V0_1_0().translate("wdl", allow_empty_container=True)

