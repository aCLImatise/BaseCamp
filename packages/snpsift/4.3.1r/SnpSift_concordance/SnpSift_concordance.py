from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Snpsift_Concordance_V0_1_0 = CommandToolBuilder(tool="SnpSift_concordance", base_command=["SnpSift", "concordance"], inputs=[ToolInput(tag="in_only_use_ids", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc=": Only use sample IDs in file (format: one sample ID per line).")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_concordance", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference_dot_vcf", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequencing_dot_vcf", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Concordance_V0_1_0().translate("wdl", allow_empty_container=True)

