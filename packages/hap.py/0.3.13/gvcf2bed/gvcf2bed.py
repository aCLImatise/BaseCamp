from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Gvcf2Bed_V0_1_0 = CommandToolBuilder(tool="gvcf2bed", base_command=["gvcf2bed"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="The input file")), ToolInput(tag="in_arg_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output-file ] arg   The output file name (BED Format).")), ToolInput(tag="in_arg_reference_fasta", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --reference ] arg     Reference fasta file.")), ToolInput(tag="in_arg_optional_bed", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="[ --target-region ] arg Optional bed file with target regions"))], outputs=[ToolOutput(tag="out_arg_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_file", type_hint=File()), doc=OutputDocumentation(doc="[ --output-file ] arg   The output file name (BED Format)."))], container="quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gvcf2Bed_V0_1_0().translate("wdl")

