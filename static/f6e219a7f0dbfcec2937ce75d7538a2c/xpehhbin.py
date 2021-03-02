from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Xpehhbin_V0_1_0 = CommandToolBuilder(tool="xpehhbin", base_command=["xpehhbin"], inputs=[ToolInput(tag="in_hapa", input_type=Boolean(optional=True), prefix="--hapA", doc=InputDocumentation(doc="Hap file for population A")), ToolInput(tag="in_hap_b", input_type=Boolean(optional=True), prefix="--hapB", doc=InputDocumentation(doc="Hap file for population B")), ToolInput(tag="in_map", input_type=Boolean(optional=True), prefix="--map", doc=InputDocumentation(doc="Map file")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_cut_off", input_type=Boolean(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="EHH cutoff value (default: 0.05)")), ToolInput(tag="in_min_maf", input_type=Boolean(optional=True), prefix="--minmaf", doc=InputDocumentation(doc="Minimum allele frequency (default: 0.05)")), ToolInput(tag="in_scale", input_type=Boolean(optional=True), prefix="--scale", doc=InputDocumentation(doc="Gap scale parameter in bp, used to scale gaps > scale parameter as in Voight, et al.")), ToolInput(tag="in_bin", input_type=Boolean(optional=True), prefix="--bin", doc=InputDocumentation(doc="Number of frequency bins for iHS normalization (default: 50)")), ToolInput(tag="in_bin_om", input_type=Boolean(optional=True), prefix="--binom", doc=InputDocumentation(doc="Use binomial coefficients rather than frequency squared for EHH")), ToolInput(tag="in_max_extend", input_type=Boolean(optional=True), prefix="--max-extend", doc=InputDocumentation(doc="Maximum distance in bp to traverse when calculating EHH (default: 0 (disabled))"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xpehhbin_V0_1_0().translate("wdl", allow_empty_container=True)

