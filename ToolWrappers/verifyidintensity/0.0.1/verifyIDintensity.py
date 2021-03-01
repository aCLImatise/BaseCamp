from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, File, Boolean, String

Verifyidintensity_V0_1_0 = CommandToolBuilder(tool="verifyIDintensity", base_command=["verifyIDintensity"], inputs=[ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Minimum allele frequency for likelihood estimation, default is 0.01")), ToolInput(tag="in_marker", input_type=Int(optional=True), prefix="--marker", doc=InputDocumentation(doc="(required)  Number of markers")), ToolInput(tag="in_number", input_type=Int(optional=True), prefix="--number", doc=InputDocumentation(doc="(required)  Number of samples")), ToolInput(tag="in_abf", input_type=File(optional=True), prefix="--abf", doc=InputDocumentation(doc="Allele frequency file (ABF), which is a plain text file with SNP_ID\nand Allele_B frequency")), ToolInput(tag="in_stat", input_type=File(optional=True), prefix="--stat", doc=InputDocumentation(doc="Statistics file (created if not exist)")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="(required)  Input intensity (.adpc.bin) file")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on verbose mode")), ToolInput(tag="in_per_sample", input_type=Boolean(optional=True), prefix="--persample", doc=InputDocumentation(doc="Do per-sample analysis, default is per-marker analysis")), ToolInput(tag="in_string", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/verifyidintensity:0.0.1--h176a8bc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Verifyidintensity_V0_1_0().translate("wdl")

