from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Varda2_Client_Submit_V0_1_0 = CommandToolBuilder(tool="varda2_client_submit", base_command=["varda2-client", "submit"], inputs=[ToolInput(tag="in_disease_code", input_type=String(optional=True), prefix="--disease-code", doc=InputDocumentation(doc="Disease indication code")), ToolInput(tag="in_lab_sample_id", input_type=String(optional=True), prefix="--lab-sample-id", doc=InputDocumentation(doc="Local sample id")), ToolInput(tag="in_coverage_file", input_type=File(optional=True), prefix="--coverage-file", doc=InputDocumentation(doc="Varda coverage file")), ToolInput(tag="in_sample_sheet", input_type=File(optional=True), prefix="--sample-sheet", doc=InputDocumentation(doc="Sample sheet file: sample_id, gvcf, vcf, bam")), ToolInput(tag="in_variants_file", input_type=File(optional=True), prefix="--variants-file", doc=InputDocumentation(doc="Varda variants file\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varda2_Client_Submit_V0_1_0().translate("wdl", allow_empty_container=True)

