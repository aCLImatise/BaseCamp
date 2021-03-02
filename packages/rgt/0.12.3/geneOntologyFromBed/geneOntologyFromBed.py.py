from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Geneontologyfrombed_Py_V0_1_0 = CommandToolBuilder(tool="geneOntologyFromBed.py", base_command=["geneOntologyFromBed.py"], inputs=[ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="choose mode")), ToolInput(tag="in_exp_matrix", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Geneontologyfrombed_Py_V0_1_0().translate("wdl", allow_empty_container=True)

