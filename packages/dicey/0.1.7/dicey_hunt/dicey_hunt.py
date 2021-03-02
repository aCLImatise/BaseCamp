from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dicey_Hunt_V0_1_0 = CommandToolBuilder(tool="dicey_hunt", base_command=["dicey", "hunt"], inputs=[ToolInput(tag="in_arg_genome_file", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[ --genome ] arg                   genome file")), ToolInput(tag="in_arg_gzipped_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg                  gzipped output file")), ToolInput(tag="in_arg_max_number", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --maxmatches ] arg (=1000)       max. number of matches")), ToolInput(tag="in_arg_max_neighborhood", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="[ --maxNeighborhood ] arg (=10000) max. neighborhood size")), ToolInput(tag="in_arg_neighborhood_distance", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --distance ] arg (=1)            neighborhood distance")), ToolInput(tag="in_use_hamming_neighborhood", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --hamming ]                      use hamming neighborhood instead of\nedit distance")), ToolInput(tag="in_only_forward_matches", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --forward ]                      only forward matches")), ToolInput(tag="in_catt_acta_a_cat_ca_gt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_gzipped_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_gzipped_file", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg                  gzipped output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dicey_Hunt_V0_1_0().translate("wdl", allow_empty_container=True)

