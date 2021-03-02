from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Varda2_Client_Annotate_V0_1_0 = CommandToolBuilder(tool="varda2_client_annotate", base_command=["varda2-client", "annotate"], inputs=[ToolInput(tag="in_sample_sheet", input_type=File(optional=True), prefix="--sample-sheet", doc=InputDocumentation(doc="Sample sheet file: sample_id, gvcf, vcf, bam")), ToolInput(tag="in_variants_file", input_type=File(optional=True), prefix="--variants-file", doc=InputDocumentation(doc="Varda variants file")), ToolInput(tag="in_lab_sample_id", input_type=String(optional=True), prefix="--lab-sample-id", doc=InputDocumentation(doc="Local sample id\n"))], outputs=[], container="quay.io/biocontainers/varda2-client:0.9--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varda2_Client_Annotate_V0_1_0().translate("wdl")

