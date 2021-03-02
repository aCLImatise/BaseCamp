from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Vcfannotate_V0_1_0 = CommandToolBuilder(tool="vcfannotate", base_command=["vcfannotate"], inputs=[ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="--bed", doc=InputDocumentation(doc="use annotations provided by this BED file")), ToolInput(tag="in_key", input_type=Boolean(optional=True), prefix="--key", doc=InputDocumentation(doc="use this INFO field key for the annotations")), ToolInput(tag="in_default", input_type=Boolean(optional=True), prefix="--default", doc=InputDocumentation(doc="use this INFO field key for records without annotations")), ToolInput(tag="in_vcf_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfannotate_V0_1_0().translate("wdl", allow_empty_container=True)

