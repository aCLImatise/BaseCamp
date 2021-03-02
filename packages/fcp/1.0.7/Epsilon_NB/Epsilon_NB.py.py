from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Epsilon_Nb_Py_V0_1_0 = CommandToolBuilder(tool="Epsilon_NB.py", base_command=["Epsilon-NB.py"], inputs=[ToolInput(tag="in_nb_results", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_epsilon", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_results_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Epsilon_Nb_Py_V0_1_0().translate("wdl", allow_empty_container=True)

