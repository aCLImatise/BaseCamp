from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Snpsift_Hwe_V0_1_0 = CommandToolBuilder(tool="SnpSift_hwe", base_command=["SnpSift", "hwe"], inputs=[ToolInput(tag="in__be_quite", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": Be quite")), ToolInput(tag="in__be_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Be verbose")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_h_we", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_vcf", input_type=File(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Hwe_V0_1_0().translate("wdl", allow_empty_container=True)

