from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Alleles_V0_1_0 = CommandToolBuilder(tool="alleles", base_command=["alleles"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Input VCF file.")), ToolInput(tag="in_arg_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output-file ] arg The output file name (VCF / BCF / VCF.gz).")), ToolInput(tag="in_gt", input_type=Int(optional=True), prefix="--gt", doc=InputDocumentation(doc="What GT to write: hemi | het | hom | half | first\nfor 1 | 0/1 | 1/1 | ./1 | first sample GT; default\nis half")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="(=SAMPLE)   Output sample name"))], outputs=[ToolOutput(tag="out_arg_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_file", type_hint=File()), doc=OutputDocumentation(doc="[ --output-file ] arg The output file name (VCF / BCF / VCF.gz)."))], container="quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alleles_V0_1_0().translate("wdl")

