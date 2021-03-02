from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int, Boolean

Chicviewpointbackgroundmodel_V0_1_0 = CommandToolBuilder(tool="chicViewpointBackgroundModel", base_command=["chicViewpointBackgroundModel"], inputs=[ToolInput(tag="in_matrices", input_type=Array(t=String(), optional=True), prefix="--matrices", doc=InputDocumentation(doc="The input matrices (samples) to build the background\nmodel on.")), ToolInput(tag="in_reference_points", input_type=File(optional=True), prefix="--referencePoints", doc=InputDocumentation(doc="Bed file contains all reference points which should be\nused to build the background model.")), ToolInput(tag="in_average_contact_bin", input_type=Int(optional=True), prefix="--averageContactBin", doc=InputDocumentation(doc="Average the contacts of n bins via a sliding window\napproach (Default: 5).")), ToolInput(tag="in_truncate_zeros", input_type=Boolean(optional=True), prefix="--truncateZeros", doc=InputDocumentation(doc="Truncates the zeros before the distributions are\nfitted. Use it in case you observe an over dispersion.")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="The name of the background model file (Default:\nbackground_model.txt).")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (uses the python multiprocessing\nmodule) (Default: 4).")), ToolInput(tag="in_fixate_range", input_type=Int(optional=True), prefix="--fixateRange", doc=InputDocumentation(doc="Fixate score of backgroundmodel starting at distance\nx. E.g. all values greater 500kb are set to the value\nof the 500kb bin (Default: 500000)."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="The name of the background model file (Default:\nbackground_model.txt)."))], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chicviewpointbackgroundmodel_V0_1_0().translate("wdl")

