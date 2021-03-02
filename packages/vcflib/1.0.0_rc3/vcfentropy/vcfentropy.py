from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Vcfentropy_V0_1_0 = CommandToolBuilder(tool="vcfentropy", base_command=["vcfentropy"], inputs=[ToolInput(tag="in_fast_a_reference", input_type=Boolean(optional=True), prefix="--fasta-reference", doc=InputDocumentation(doc="FASTA reference file to use to obtain flanking sequences")), ToolInput(tag="in_window_size", input_type=Boolean(optional=True), prefix="--window-size", doc=InputDocumentation(doc="Size of the window over which to calculate entropy")), ToolInput(tag="in_vcf_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfentropy_V0_1_0().translate("wdl", allow_empty_container=True)

