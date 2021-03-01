from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Advntr_Addmodel_V0_1_0 = CommandToolBuilder(tool="advntr_addmodel", base_command=["advntr", "addmodel"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference genome")), ToolInput(tag="in_chromosome", input_type=Int(optional=True), prefix="--chromosome", doc=InputDocumentation(doc="Chromosome (e.g. chr1)")), ToolInput(tag="in_pattern", input_type=Int(optional=True), prefix="--pattern", doc=InputDocumentation(doc="First repeating pattern of VNTR in forward (5' to 3') direction")), ToolInput(tag="in_start", input_type=Int(optional=True), prefix="--start", doc=InputDocumentation(doc="Start coordinate of VNTR in forward (5' to 3') direction")), ToolInput(tag="in_end", input_type=Int(optional=True), prefix="--end", doc=InputDocumentation(doc="End coordinate of VNTR in forward (5' to 3') direction")), ToolInput(tag="in_gene", input_type=String(optional=True), prefix="--gene", doc=InputDocumentation(doc="Gene name")), ToolInput(tag="in_annotation", input_type=String(optional=True), prefix="--annotation", doc=InputDocumentation(doc="Annotation of VNTR region")), ToolInput(tag="in_models", input_type=File(optional=True), prefix="--models", doc=InputDocumentation(doc="VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]"))], outputs=[], container="quay.io/biocontainers/advntr:1.4.1--py27h76bc9d7_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Advntr_Addmodel_V0_1_0().translate("wdl")

