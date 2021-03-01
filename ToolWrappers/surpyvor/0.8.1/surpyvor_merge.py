from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, String, File, Int

Surpyvor_Merge_V0_1_0 = CommandToolBuilder(tool="surpyvor_merge", base_command=["surpyvor", "merge"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print out more information while running.")), ToolInput(tag="in_variants", input_type=Array(t=String(), optional=True), prefix="--variants", doc=InputDocumentation(doc="vcf files to merge")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file")), ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--distance", doc=InputDocumentation(doc="distance between variants to merge")), ToolInput(tag="in_minlength", input_type=Int(optional=True), prefix="--minlength", doc=InputDocumentation(doc="Minimum length of variants to consider")), ToolInput(tag="in_callers", input_type=Int(optional=True), prefix="--callers", doc=InputDocumentation(doc="Minimum number of callers to support a variant")), ToolInput(tag="in_ignore_type", input_type=Boolean(optional=True), prefix="--ignore_type", doc=InputDocumentation(doc="Ignore the type of the structural variant")), ToolInput(tag="in_strand", input_type=Boolean(optional=True), prefix="--strand", doc=InputDocumentation(doc="Take strand into account")), ToolInput(tag="in_estimate_distance", input_type=Boolean(optional=True), prefix="--estimate_distance", doc=InputDocumentation(doc="Estimate distance between calls\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Surpyvor_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

