from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Phenix_Py_Prepare_Reference_V0_1_0 = CommandToolBuilder(tool="phenix.py_prepare_reference", base_command=["phenix.py", "prepare_reference"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Path to reference file to prepare.")), ToolInput(tag="in_mapper", input_type=Int(optional=True), prefix="--mapper", doc=InputDocumentation(doc="Available mappers: ['bwa', 'bowtie2']")), ToolInput(tag="in_variant", input_type=String(optional=True), prefix="--variant", doc=InputDocumentation(doc="Available variants: ['mpileup', 'gatk']"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phenix_Py_Prepare_Reference_V0_1_0().translate("wdl", allow_empty_container=True)

