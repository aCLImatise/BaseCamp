from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Iu_Gen_Matching_Fastq_Files_V0_1_0 = CommandToolBuilder(tool="iu_gen_matching_fastq_files", base_command=["iu-gen-matching-fastq-files"], inputs=[ToolInput(tag="in_r_one", input_type=File(optional=True), prefix="--r1", doc=InputDocumentation(doc="R1")), ToolInput(tag="in_r_two", input_type=File(optional=True), prefix="--r2", doc=InputDocumentation(doc="R2")), ToolInput(tag="in_identifier_code", input_type=Int(optional=True), prefix="--identifier-code", doc=InputDocumentation(doc="CODE\nLambda function to parse the header. Default:\n'''lambda defline: defline.split()[0]'''.")), ToolInput(tag="in_identifier_tested", input_type=Boolean(optional=True), prefix="--identifier-tested", doc=InputDocumentation(doc="Use this flag to indicate that you tested your")), ToolInput(tag="in_identifier_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--sequential          Your identifier code parses an integer value that can"))], outputs=[], container="quay.io/biocontainers/illumina-utils:2.11--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Gen_Matching_Fastq_Files_V0_1_0().translate("wdl")

