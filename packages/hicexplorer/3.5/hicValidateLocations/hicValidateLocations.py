from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Hicvalidatelocations_V0_1_0 = CommandToolBuilder(tool="hicValidateLocations", base_command=["hicValidateLocations"], inputs=[ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="The loop file from hicDetectLoops. To use files from\nother sources, please follow 'chr start end chr start\nend' format.")), ToolInput(tag="in_protein", input_type=File(optional=True), prefix="--protein", doc=InputDocumentation(doc="The protein peak file. Can be narrowPeak or broadPeak")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="The loop file")), ToolInput(tag="in_resolution", input_type=String(optional=True), prefix="--resolution", doc=InputDocumentation(doc="The used resolution of the Hi-C interaction matrix.")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="The prefix name of the output files. Two file are\nwritten: output_matched_locations and\noutput_statistics.First file contains all loop\nlocations with protein location matches, second file\ncontains statistics about this matching.")), ToolInput(tag="in_add_chr_prefix_loops", input_type=Boolean(optional=True), prefix="--addChrPrefixLoops", doc=InputDocumentation(doc="Adding a 'chr'-prefix to chromosome name of the loops.")), ToolInput(tag="in_add_chr_prefix_protein", input_type=Boolean(optional=True), prefix="--addChrPrefixProtein", doc=InputDocumentation(doc="Adding a 'chr'-prefix to chromosome name of the\nprotein."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="The prefix name of the output files. Two file are\nwritten: output_matched_locations and\noutput_statistics.First file contains all loop\nlocations with protein location matches, second file\ncontains statistics about this matching."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicvalidatelocations_V0_1_0().translate("wdl", allow_empty_container=True)

