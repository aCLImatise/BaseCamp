from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gvcfgenotyper_V0_1_0 = CommandToolBuilder(tool="gvcfgenotyper", base_command=["gvcfgenotyper"], inputs=[ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="<file>          plain text list of gvcfs to merge")), ToolInput(tag="in_fast_a_ref", input_type=Boolean(optional=True), prefix="--fasta-ref", doc=InputDocumentation(doc="<file>          reference sequence")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="<file>          output file name [stdout]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="<file>          logging information")), ToolInput(tag="in_output_type", input_type=Boolean(optional=True), prefix="--output-type", doc=InputDocumentation(doc="<b|u|z|v>       b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]")), ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="--region", doc=InputDocumentation(doc="<region>        region to genotype eg. chr1 or chr20:5000000-6000000")), ToolInput(tag="in_max_alleles", input_type=Boolean(optional=True), prefix="--max-alleles", doc=InputDocumentation(doc="INT             maximum number of alleles [50]"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="<file>          output file name [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gvcfgenotyper_V0_1_0().translate("wdl", allow_empty_container=True)

