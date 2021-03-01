from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Boolean, Int

Chicviewpointbackgroundmodel_V0_1_0 = CommandToolBuilder(tool="chicViewpointBackgroundModel", base_command=["chicViewpointBackgroundModel"], inputs=[ToolInput(tag="in_matrices", input_type=Array(t=String(), optional=True), prefix="--matrices", doc=InputDocumentation(doc="The input matrices (samples) to build the background\nmodel on.")), ToolInput(tag="in_reference_points", input_type=File(optional=True), prefix="--referencePoints", doc=InputDocumentation(doc="Bed file contains all reference points which should be\nused to build the background model.")), ToolInput(tag="in_average_contact_bin", input_type=String(optional=True), prefix="--averageContactBin", doc=InputDocumentation(doc="Average the contacts of n bins via a sliding window\napproach.")), ToolInput(tag="in_truncate_zeros", input_type=Boolean(optional=True), prefix="--truncateZeros", doc=InputDocumentation(doc="Truncates the zeros before the distributions are\nfitted. Use it in case you observe an over dispersion.")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="The name of the background model file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (uses the python multiprocessing\nmodule).")), ToolInput(tag="in_fixate_range", input_type=Int(optional=True), prefix="--fixateRange", doc=InputDocumentation(doc="Fixate score of backgroundmodel starting at distance\nx. E.g. all values greater 500kb are set to the value\nof the 500kb bin."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="The name of the background model file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chicviewpointbackgroundmodel_V0_1_0().translate("wdl", allow_empty_container=True)

