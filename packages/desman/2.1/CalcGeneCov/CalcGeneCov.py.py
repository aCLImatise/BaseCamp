from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Calcgenecov_Py_V0_1_0 = CommandToolBuilder(tool="CalcGeneCov.py", base_command=["CalcGeneCov.py"], inputs=[ToolInput(tag="in_gene_freq_file", input_type=String(), position=0, doc=InputDocumentation(doc="input gene base frequencies"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calcgenecov_Py_V0_1_0().translate("wdl", allow_empty_container=True)

