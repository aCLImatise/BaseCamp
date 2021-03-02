from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Filtercorrectionlayouts_V0_1_0 = CommandToolBuilder(tool="filterCorrectionLayouts", base_command=["filterCorrectionLayouts"], inputs=[ToolInput(tag="in_input_reads", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="input reads")), ToolInput(tag="in_input_correction_layouts", input_type=String(optional=True), prefix="-C", doc=InputDocumentation(doc="input correction layouts")), ToolInput(tag="in_output_ascii_list", input_type=String(optional=True), prefix="-R", doc=InputDocumentation(doc="output ascii list of read IDs to correct\nalso creates\nasm.readsToCorrect.stats and\nasm.readsToCorrect.log")), ToolInput(tag="in_cc", input_type=Boolean(optional=True), prefix="-cc", doc=InputDocumentation(doc="minimum coverage of evidence reads")), ToolInput(tag="in_cl", input_type=Boolean(optional=True), prefix="-cl", doc=InputDocumentation(doc="minimum length of a corrected read")), ToolInput(tag="in_estimated_genome_size", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="estimated genome size")), ToolInput(tag="in_desired_coverage_reads", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="desired coverage in corrected reads")), ToolInput(tag="in_rescue", input_type=Boolean(optional=True), prefix="-rescue", doc=InputDocumentation(doc="enable rescue - if read not used as evidence\nforce it to be corrected"))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filtercorrectionlayouts_V0_1_0().translate("wdl")

