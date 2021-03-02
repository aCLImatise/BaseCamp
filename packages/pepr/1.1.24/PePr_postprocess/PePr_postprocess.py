from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Pepr_Postprocess_V0_1_0 = CommandToolBuilder(tool="PePr_postprocess", base_command=["PePr-postprocess"], inputs=[ToolInput(tag="in_peak", input_type=File(optional=True), prefix="--peak", doc=InputDocumentation(doc="peak file")), ToolInput(tag="in_chip", input_type=String(optional=True), prefix="--chip", doc=InputDocumentation(doc="chip files separated by comma")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="input files separated by comma")), ToolInput(tag="in_file_type", input_type=File(optional=True), prefix="--file-type", doc=InputDocumentation(doc="read file types. bed, sam, bam")), ToolInput(tag="in_remove_artefacts", input_type=Boolean(optional=True), prefix="--remove-artefacts", doc=InputDocumentation(doc="remove peaks that may be caused by excess PCR")), ToolInput(tag="in_duplicates", input_type=String(), position=0, doc=InputDocumentation(doc="--narrow-peak-boundary"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pepr_Postprocess_V0_1_0().translate("wdl", allow_empty_container=True)

