from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Biom_Relative_Abundance_Py_V0_1_0 = CommandToolBuilder(tool="biom_relative_abundance.py", base_command=["biom_relative_abundance.py"], inputs=[ToolInput(tag="in_input_biom_fp", input_type=File(optional=True), prefix="--input_biom_fp", doc=InputDocumentation(doc="BIOM file path.")), ToolInput(tag="in_output_tsv_fp", input_type=String(optional=True), prefix="--output_tsv_fp", doc=InputDocumentation(doc="A TSV table of relative OTU abundance data.")), ToolInput(tag="in_stabilize_variance", input_type=Boolean(optional=True), prefix="--stabilize_variance", doc=InputDocumentation(doc="Apply the variance-stabilizing arcsine square root\ntransformation to the OTU proportion data.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biom_Relative_Abundance_Py_V0_1_0().translate("wdl", allow_empty_container=True)

