from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bgt_Import_V0_1_0 = CommandToolBuilder(tool="bgt_import", base_command=["bgt", "import"], inputs=[ToolInput(tag="in_input_is_vcf", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="input is VCF")), ToolInput(tag="in_list_reference_lengths", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="list of reference names and lengths [null]")), ToolInput(tag="in_keep_filtered_variants", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="keep filtered variants")), ToolInput(tag="in_generate_file_used", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="generate .pb1 file (not used for now)")), ToolInput(tag="in_out_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bcf", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bgt_Import_V0_1_0().translate("wdl", allow_empty_container=True)

