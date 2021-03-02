from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Domtblout2Gene_Generic_Py_V0_1_0 = CommandToolBuilder(tool="domtblout2gene_generic.py", base_command=["domtblout2gene_generic.py"], inputs=[ToolInput(tag="in_generate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_summary", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_matrix", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_filtered", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_best", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_hmmer", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_annotation", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=9, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Domtblout2Gene_Generic_Py_V0_1_0().translate("wdl", allow_empty_container=True)

