from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Vcfcheck_V0_1_0 = CommandToolBuilder(tool="vcfcheck", base_command=["vcfcheck"], inputs=[ToolInput(tag="in_fast_a_reference", input_type=Boolean(optional=True), prefix="--fasta-reference", doc=InputDocumentation(doc="FASTA reference file to use to obtain primer sequences")), ToolInput(tag="in_exclude_failures", input_type=String(optional=True), prefix="--exclude-failures", doc=InputDocumentation(doc="a record fails, don't print it.  Otherwise do.")), ToolInput(tag="in_keep_failures", input_type=Boolean(optional=True), prefix="--keep-failures", doc=InputDocumentation(doc="Print if the record fails, otherwise not.")), ToolInput(tag="in_vcf_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfcheck_V0_1_0().translate("wdl", allow_empty_container=True)

