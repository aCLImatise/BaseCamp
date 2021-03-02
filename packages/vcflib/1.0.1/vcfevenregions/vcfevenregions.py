from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Vcfevenregions_V0_1_0 = CommandToolBuilder(tool="vcfevenregions", base_command=["vcfevenregions"], inputs=[ToolInput(tag="in_fast_a_reference", input_type=File(optional=True), prefix="--fasta-reference", doc=InputDocumentation(doc="FASTA reference file to use to obtain primer sequences.")), ToolInput(tag="in_number_of_regions", input_type=Int(optional=True), prefix="--number-of-regions", doc=InputDocumentation(doc="The number of desired regions.")), ToolInput(tag="in_number_of_positions", input_type=Int(optional=True), prefix="--number-of-positions", doc=InputDocumentation(doc="The number of positions per region.")), ToolInput(tag="in_offset", input_type=String(optional=True), prefix="--offset", doc=InputDocumentation(doc="Add an offset to region positioning, to avoid boundary\nrelated artifacts in downstream processing.")), ToolInput(tag="in_overlap", input_type=Int(optional=True), prefix="--overlap", doc=InputDocumentation(doc="The number of sites to overlap between regions.  Default 0.")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="Specify string to use to separate region output.  Default '-'")), ToolInput(tag="in_vcf_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfevenregions_V0_1_0().translate("wdl")

