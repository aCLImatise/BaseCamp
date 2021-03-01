from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Surpyvor_Haplomerge_V0_1_0 = CommandToolBuilder(tool="surpyvor_haplomerge", base_command=["surpyvor", "haplomerge"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print out more information while running. (default:\nFalse)")), ToolInput(tag="in_variants", input_type=Boolean(optional=True), prefix="--variants", doc=InputDocumentation(doc="[VARIANTS [VARIANTS ...]]\nvcf files to merge (default: None)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file (default: stdout)")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="name of sample in output VCF (default: stdout)")), ToolInput(tag="in_distance", input_type=Int(optional=True), prefix="--distance", doc=InputDocumentation(doc="distance between variants to merge (default: 200)")), ToolInput(tag="in_minlength", input_type=Int(optional=True), prefix="--minlength", doc=InputDocumentation(doc="Minimum length of variants to consider (default: 50)")), ToolInput(tag="in_callers", input_type=Int(optional=True), prefix="--callers", doc=InputDocumentation(doc="Minimum number of callers to support a variant\n(default: 1)")), ToolInput(tag="in_ignore_type", input_type=Boolean(optional=True), prefix="--ignore_type", doc=InputDocumentation(doc="Ignore the type of the structural variant (default:\nFalse)")), ToolInput(tag="in_strand", input_type=Boolean(optional=True), prefix="--strand", doc=InputDocumentation(doc="Take strand into account (default: False)")), ToolInput(tag="in_estimate_distance", input_type=Boolean(optional=True), prefix="--estimate_distance", doc=InputDocumentation(doc="Estimate distance between calls (default: False)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file (default: stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Surpyvor_Haplomerge_V0_1_0().translate("wdl", allow_empty_container=True)

