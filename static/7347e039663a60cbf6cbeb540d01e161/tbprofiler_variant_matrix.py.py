from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tbprofiler_Variant_Matrix_Py_V0_1_0 = CommandToolBuilder(tool="tbprofiler_variant_matrix.py", base_command=["tbprofiler_variant_matrix.py"], inputs=[ToolInput(tag="in_samples", input_type=String(optional=True), prefix="--samples", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_dir", input_type=String(optional=True), prefix="--dir", doc=InputDocumentation(doc="NGS Platform (default: results/)")), ToolInput(tag="in_txt", input_type=String(optional=True), prefix="--txt", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_fast_a", input_type=String(optional=True), prefix="--fasta", doc=InputDocumentation(doc="NGS Platform (default: None)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Variant_Matrix_Py_V0_1_0().translate("wdl", allow_empty_container=True)

